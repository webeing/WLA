using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Web.Script.Serialization;
using NLog;

namespace ArtPrize.ActionFilters
{
    static class Extension
    {
        public static string ExtendedToString(this IDictionary<string, object> dict)
        {
            string res = "";

            foreach (string key in dict.Keys)
                res += key + ": " + (dict[key] == null ? "null" : dict[key].ToString());
            return res;
        }
    }

    /// <summary>
    /// Used to enable base logging for controllers actions
    /// </summary>
    public class LoggingAttribute : ActionFilterAttribute
    {
        Logger logger;

        public LoggingAttribute()
        {
            logger = LogManager.GetLogger(HttpContext.Current.Session.SessionID);
        }

        /// <summary>
        /// Logs the action's execution and its result. 
        /// It logs the exception if an exception occurs during the action execution
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
            //logger.Info(String.Format("Executed action {0} on controller {1}."));                                             
            if (filterContext.Exception == null)
            {
                logger.Info(
                    String.Format("Action {0} on controller {1} executed.",
                    filterContext.ActionDescriptor.ActionName,
                    filterContext.ActionDescriptor.ControllerDescriptor.ControllerName));
                if (logger.IsDebugEnabled)
                {
                    if (filterContext.Result.GetType() == typeof(JsonResult))
                    {
                        JavaScriptSerializer serializer = new JavaScriptSerializer();
                        logger.Debug(String.Format(
                            "Executed action {0} on controller {1}. Result: {2}",
                            filterContext.ActionDescriptor.ActionName,
                            filterContext.ActionDescriptor.ControllerDescriptor.ControllerName,
                            serializer.Serialize(((JsonResult)filterContext.Result).Data)));
                    }
                    else
                        logger.Debug(String.Format(
                            "Executed action {0} on controller {1}. Result: {2}",
                            filterContext.ActionDescriptor.ActionName,
                            filterContext.ActionDescriptor.ControllerDescriptor.ControllerName,
                            filterContext.HttpContext.Response.Status));
                }
            }
            else
            {
                logger.Fatal(String.Format(
                    "An error occurred in the action {0} of the controller {1}",
                    filterContext.ActionDescriptor.ActionName,
                    filterContext.ActionDescriptor.ControllerDescriptor.ControllerName));
                logger.Fatal(filterContext.Exception);
            }
        }

        /// <summary>
        /// Logs the starting of the execution of an actions
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            logger.Debug(String.Format("Executing action {0} on controller {1}. Input parameters: {2}",
                filterContext.ActionDescriptor.ActionName,
                filterContext.ActionDescriptor.ControllerDescriptor.ControllerName,
                filterContext.ActionParameters.ExtendedToString()));
        }
    }
}