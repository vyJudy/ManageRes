using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

namespace ResWebsite.DAL
{
    public class MealDAL
    {
        ManageRestaurantEntities db = new ManageRestaurantEntities();
        public IEnumerable<Meal> GetAllMeal()
        {
            
            return db.Meals.ToList();
        }
    }
}
