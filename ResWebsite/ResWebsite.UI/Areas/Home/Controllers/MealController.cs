using ResWebsite.BLL;
using ResWebsite.DAL;
using System.Diagnostics;
using System.Web.Mvc;

namespace ResWebsite.UI.Areas.Home.Controllers
{
    public class MealController : Controller
    {
        MealBLL mealbll = new MealBLL();
        ManageRestaurantEntities db = new ManageRestaurantEntities();

        // GET: Home/Meal
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult DisplayMeals()
        {
            Trace.Write("==========================");
            foreach (Meal i in mealbll.GetAllMeal())
            {
                Trace.WriteLine("=========" + i.MealName);
            }
            return this.Json("csd", JsonRequestBehavior.AllowGet);
        }
    }
}