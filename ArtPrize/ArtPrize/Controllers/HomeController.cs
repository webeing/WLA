using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.ActionFilters;
using ArtPrize.Models.Services;

namespace ArtPrize.Controllers
{    
    [LoggingAttribute]
    [HandleException]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Innovation() 
        {
            return View();
        }

        public ActionResult Prize() 
        {
            return View();
        }

        public ActionResult Privacy() 
        {
            return View();
        }

        public ActionResult Rule() 
        {
            return View();
        }

        public ActionResult Works() 
        {
            VoteService service = new VoteService();
            var res = service.GetCurrentVotes().ToDictionary(x => x.ArtworkId, x => x.Count);
            ViewData["votes"] = res;
            return View();
        }
    }
}
