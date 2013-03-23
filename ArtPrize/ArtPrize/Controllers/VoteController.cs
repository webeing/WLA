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
                vote.SessionId = Session.SessionID;                
                voteService.Create(vote);
                return View("AddResult");                
            }
            catch (ArgumentNullException ex)
            {
                return View("AddResult", new Error()
                {
                    Description = "Ops... Si è verificato un errore. Riprova più tardi."
                });
            }
            catch (AlreadyExistingEmailException ex) 
            {
                return View("AddResult", new Error()
                {
                    Description = "Ops... Sembra che hai già votato."
                });
            }
            catch (AlreadyExistingIpException ex)
            {
                return View("AddResult", new Error()
                {
                    Description = "Ops... Sembra che hai già votato."
                });
            }
            catch (ValidationException ex)
            {
                return View("AddResult", new Error()
                {
                    Description = "Valori mancanti o non corretti."
                });
            }
            catch (Exception ex)
            {
                return View("AddResult", new Error()
                {
                    Description = "Ops... Si è verificato un errore. Riprova più tardi."
                });
            }
            
        }                
    }
}
