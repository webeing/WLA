using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System.Security.Authentication;

namespace ArtPrize.ActionFilters
{
    /// <summary>
    /// Handles an exception occurred on an action by changing the response type
    /// to 500 (internal error) and by changing the response text to the localized 
    /// error description.
    /// </summary>
    public class HandleExceptionAttribute : ActionFilterAttribute
    {
        /// <summary>
        /// The message what will be shown to the user. If null, the
        /// excepion message will be shown to the user.
        /// </summary>
        public string Message
        {
            get;
            set;
        }

        /// <summary>
        /// Handles an exception occurred in an action method, then it reads the related message by using the
        /// exception name and returns the message in the response text with a 500 error code.
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            if (filterContext.HttpContext.Request.IsAjaxRequest() && filterContext.Exception != null)
            {
                filterContext.HttpContext.Response.StatusCode = (int)System.Net.HttpStatusCode.InternalServerError;

                Controller currentController = (Controller)filterContext.Controller;
                //try to get from the resource file the message related to the action and the error

                string key = (string)currentController.RouteData.Values["action"] + "_" + filterContext.Exception.GetType().Name;

                string message = filterContext.Exception.Message;

                /*
                 * if the message is not found, so try to get a generic message for
                 * given action (action name required and exception)
                 */
                //if (string.IsNullOrEmpty(message))
                //    message = currentController.Resource((string)currentController.RouteData.Values["action"] + "_Exception");

                filterContext.Result = new JsonResult()
                {
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                    Data = message
                };
                filterContext.ExceptionHandled = true;
            }
            else if (filterContext.Exception != null)
            {
                filterContext.Result = new RedirectToRouteResult("Error", null);                
            }
        }
    }
}
