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

            vote.User = new User();
            vote.User.Email = form["Email"];
            vote.User.Address = form["Address"];
            vote.User.LastName = form["LastName"];
            vote.User.MobilePhone = form["MobilePhone"];
            vote.User.Name = form["Name"];
            vote.User.City = form["City"];
            vote.User.District = form["District"];
            vote.User.CAP = form["CAP"];
            vote.User.Birthday = Convert.ToDateTime(form["Birthday"]);
            vote.User.PrivacyRead = Convert.ToBoolean(form["PrivacyRead"]);
            vote.User.TermsAcceptance = Convert.ToBoolean(form["TermsAcceptance"]);
            vote.User.RuleAcceptance = Convert.ToBoolean(form["RuleAcceptance"]);
            vote.User.Gender = form["Gender"][0];
            vote.User.Ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];

            return vote;
        }
    }
}