using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.ActionFilters;
using ArtPrize.Models.Services;
using NLog;

namespace ArtPrize.Controllers
{    
    [LoggingAttribute]
    [LogSetter]
    [HandleException]
    public class HomeController : BaseController
    {
        VoteService service;        

        public HomeController() 
        {
            service = new VoteService();                
        }

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

        [ActionName("Premi")]
        public ActionResult Prize() 
        {
            return View("Prize");
        }
        
        public ActionResult Privacy() 
        {
            return View();
        }

        [ActionName("Regolamento")]
        public ActionResult Rule() 
        {
            return View("Rule");
        }

        [ActionName("opere-in-gara")]
        public ActionResult Works()
        {
            service.Logger = Logger;
            Logger.Trace("Retrieving votes from database");
            var res = service.GetCurrentVotes();//.ToDictionary(x => x.ArtworkId, x => x.Count);
            Logger.Debug("Retrieved votes. Votes: {0}",res.Aggregate(string.Empty,(acc,x) => acc + string.Format("Artwork: {0} -> {1}",x.ArtworkId,x.Count)));
            ViewData["votes"] = new int[] { 1, 2, 3 }.
                ToDictionary( 
                    x => x, 
                    x => 
                        { 
                            var val = res.SingleOrDefault(f => f.ArtworkId == x); 
                            return (val != null) ? val.Count : 0; 
                        } );            
            return View("Works");
        }
        
        public ActionResult Qr() 
        {
            return View();
        }

    }
}
