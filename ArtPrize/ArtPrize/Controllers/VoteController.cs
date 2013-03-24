using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.Models;
using ArtPrize.ActionFilters;
using ArtPrize.Models.Services;
using System.ComponentModel.DataAnnotations;

namespace ArtPrize.Controllers
{
    [LoggingAttribute]
    [HandleException]
    public class VoteController : BaseController
    {        
        VoteService voteService;

        public VoteController() 
        {
            voteService = new VoteService();
        }

        //
        // GET: /Vote/

        public ActionResult Works(int id)
        {
            return View(id);
        }       

        //
        // POST: /Vote/Create

        [HttpPost]
        public ActionResult Add(Vote vote)
        {                       
            voteService.Create(vote);
            return View("AddResult");                                        
        }
    }
}
