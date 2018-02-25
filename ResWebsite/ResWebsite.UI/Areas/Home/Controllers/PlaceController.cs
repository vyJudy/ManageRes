using ResWebsite.BLL;
using System.Diagnostics;
using System.Web.Mvc;

namespace ResWebsite.UI.Areas.Home.Controllers
{
    public class PlaceController : Controller
    {
        PlaceBLL placebll = new PlaceBLL();

        // GET: Home/Place
        /// <summary>
        /// get all place information
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetAllPlaces()
        {
            Trace.WriteLine("====================place");
            return this.Json(placebll.GetAllPlace(), JsonRequestBehavior.AllowGet);
        }
    }
}