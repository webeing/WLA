using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ArtPrize.Controllers
{
    public class WorksController : Controller
    {
        //
        // GET: /Works/

        public ActionResult Like(int artworkId)
        {
            return View();
        }

    }
}
