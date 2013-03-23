using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.Controllers;

namespace ArtPrize.ActionFilters
{
    public class LogSetter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            ((BaseController)filterContext.Controller).Logger = 
                NLog.LogManager.GetLogger(filterContext.HttpContext.Session.SessionID);
        }
    }
}