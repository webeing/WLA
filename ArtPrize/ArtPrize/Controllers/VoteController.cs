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
            try
            {
                voteService.Logger = Logger;
                voteService.Create(vote);
                return View("AddResult");
            }
            catch (AlreadyExistingUserException ex)
            {
                return View("AddResult", new Error { Description = ex.Message });
            }
            catch (ValidationException ex)
            {
                return View("AddResult", new Error { Description = ex.Message });
            }
            catch (Exception ex) 
            {
                return View("AddResult", new Error { Description = "Siamo spiacenti ma si è verificato un errore." });
            }
        }
    }
}
