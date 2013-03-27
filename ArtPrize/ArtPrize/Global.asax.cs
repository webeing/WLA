﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ArtPrize.Models;
using System.ComponentModel.DataAnnotations;
using ArtPrize.ModelBinders;

namespace ArtPrize
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "QRCode",
                "qr/opere-in-gara",
                new { controller = "Home", action = "Qr"});

            routes.MapRoute(
                "OnlyAction", // Route name
                "{action}", // URL with parameters
                new { controller = "Home", action = "Index"} // Parameter defaults
            );
            
            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            DataAnnotationsModelValidatorProvider.RegisterAdapter(
                typeof(ValidEmailAttribute),
                typeof(RegularExpressionAttributeAdapter));

            DataAnnotationsModelValidatorProvider.RegisterAdapter(
                typeof(ValidPhoneNumberAttribute),
                typeof(RegularExpressionAttributeAdapter));            

            DataAnnotationsModelValidatorProvider.RegisterAdapter(
                typeof(IsTrueAttribute),
                typeof(RegularExpressionAttributeAdapter));                        

            System.Web.Mvc.ModelBinders.Binders.Add(typeof(Vote), new VoteModelBinder());

            RegisterRoutes(RouteTable.Routes);

            //RouteDebug.RouteDebugger.RewriteRoutesForTesting(RouteTable.Routes);
        }
    }
}