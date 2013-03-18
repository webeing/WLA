using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Collections.Specialized;
using ArtPrize.Models;

namespace ArtPrize.ModelBinders
{
    public class VoteModelBinder : DefaultModelBinder
    {
        public override object BindModel(ControllerContext controllerContext, ModelBindingContext bindingContext)
        {
            NameValueCollection form = controllerContext.HttpContext.Request.Form;

            Vote vote = new Vote();
            vote.ArtworkId = Convert.ToInt32(form["ArtworkId"]);
            vote.SessionId = HttpContext.Current.Session.SessionID;
            vote.VoteDate = DateTime.Now;
            vote.Ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];

            vote.User = new User();
            vote.User.Email = form["Email"];
            vote.User.Address = form["Address"];
            vote.User.LastName = form["LastName"];
            vote.User.MobilePhone = form["MobilePhone"];
            vote.User.Name = form["Name"];


            return vote;
        }
    }
}