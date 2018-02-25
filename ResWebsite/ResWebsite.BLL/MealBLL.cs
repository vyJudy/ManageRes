using ResWebsite.DAL;
using System.Collections.Generic;
using System.Linq;

namespace ResWebsite.BLL
{
    public class MealBLL
    {
        MealDAL dal = new MealDAL();
        public IEnumerable<Meal> GetAllMeal()
        {
            return dal.GetAllMeal();
        }
    }
}
