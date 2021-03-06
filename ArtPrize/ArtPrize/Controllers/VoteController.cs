﻿using System;
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
    public class CaptchaValidationException : Exception 
    {}

    [LoggingAttribute]
    [HandleException]
    [LogSetter]
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
                return View("Ok",vote.ArtworkId);
            }
            catch (CaptchaValidationException ex) 
            {
                return View("Invalid", new Error { Description = "Captcha non valido." });
            }
            catch (AlreadyExistingUserException ex)
            {
                return View("AlreadyRegistered");
            }
            catch (ValidationException ex)
            {
                if(ex.Message.Contains("VoteDate"))
                    return View("Invalid", new Error { Description = "Le votazioni delle opere in gara si sono chiuse il 30 Aprile 2013. Torna a trovarci nei prossimi giorni per scoprire il vincitore di Barclays Art Prize." });
                else 
                    return View("Invalid", new Error { Description = ex.Message });
            }
            catch (Exception ex)
            {
                return View("Error");
            }
        }
    }
}
