using ResWebsite.BLL;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResWebsite.UI.Areas.Home.Controllers
{
    public class ServiceController : Controller
    {
        ServiceBLL servicebll = new ServiceBLL();

        // GET: Home/Service

        /// <summary>
        /// get all event services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetEventServices()
        {
            Trace.WriteLine("====================service");
            return this.Json(servicebll.GetEventServices(), JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// get all wedding services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetWeddingServices()
        {
            return this.Json(servicebll.GetWeddingServices(), JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// get all conference services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetConferenceServices()
        {
            return this.Json(servicebll.GetConferenceServices(), JsonRequestBehavior.AllowGet);
        }
    }
}