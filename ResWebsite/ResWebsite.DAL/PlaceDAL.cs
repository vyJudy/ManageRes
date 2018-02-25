using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResWebsite.DAL
{
    public class PlaceDAL
    {
        ManageRestaurantEntities db = new ManageRestaurantEntities();
        public IEnumerable<Place> GetAllPlace()
        {
            return db.Places.ToList();
        }
    }
}
