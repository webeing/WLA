using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Collections.Specialized;
using ArtPrize.Models;
using NLog;

namespace ArtPrize.ModelBinders
{
    public class VoteModelBinder : DefaultModelBinder
    {
        public override object BindModel(ControllerContext controllerContext, ModelBindingContext bindingContext)
        {
            Logger logger = LogManager.GetLogger(controllerContext.HttpContext.Session.SessionID);

            try
            {
                Vote receivedVote = base.BindModel(controllerContext, bindingContext) as Vote;
                NameValueCollection form = controllerContext.HttpContext.Request.Form;
                receivedVote.SessionId = HttpContext.Current.Session.SessionID;
                receivedVote.User.Ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                receivedVote.User.Birthday = DateTime.Parse(form["User.Birthday"], System.Globalization.CultureInfo.CurrentUICulture);
                receivedVote.VoteDate = DateTime.Now;
                return receivedVote;
            }
            catch (Exception ex)
            {
                logger.Fatal(ex.Message);
                logger.Fatal(ex.StackTrace);
                throw;
            }
        }
    }
}