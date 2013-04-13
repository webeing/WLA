using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ArtPrize.Models;

namespace ArtPrize.Controllers
{
    public class WorksController : Controller
    {
        //
        // GET: /Works/

        public ActionResult Like(int id)
        {
            //if true we come from facebook
            if (Request.QueryString.Count > 0)
                return RedirectToAction("Works", "Vote", new { id = id });
            else
                return View("Like0" + id);
        }

    }
}
