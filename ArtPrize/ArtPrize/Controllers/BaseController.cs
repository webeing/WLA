using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NLog;

namespace ArtPrize.Controllers
{
    public class BaseController : Controller
    {
        public Logger Logger { get; set; }     
    }
}
