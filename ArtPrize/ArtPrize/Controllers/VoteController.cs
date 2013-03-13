using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.Models;

namespace ArtPrize.Controllers
{
    public class VoteController : Controller
    {
        //
        // GET: /Vote/

        public ActionResult Index()
        {
            return View();
        }        

        //
        // GET: /Vote/Create

        public ActionResult Add()
        {
            return View();
        } 

        //
        // POST: /Vote/Create

        [HttpPost]
        public ActionResult Add(Vote vote)
        {
            return View("AddResult");
        }                
    }
}
