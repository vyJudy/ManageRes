
using ResWebsite.BLL;
using System.Diagnostics;
using System.Web.Mvc;

namespace ResWebsite.UI.Areas.Home.Controllers
{
    public class HomeController : Controller
    {
        MealBLL mealbll = new MealBLL();
        // GET: Home/Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Home()
        {
            return View();
        }
        public ActionResult Reservation()
        {
            return View(mealbll.GetAllMeal());
        }
        /// get all place information
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetMeals()
        {
            Trace.WriteLine("====================meal/home");
            return this.Json(mealbll.GetAllMeal(), JsonRequestBehavior.AllowGet);
        }
    }
}