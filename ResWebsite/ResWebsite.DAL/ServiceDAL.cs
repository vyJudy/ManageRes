using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResWebsite.DAL
{
    public class ServiceDAL
    {
        ManageRestaurantEntities db = new ManageRestaurantEntities();
        public IEnumerable<Service> GetAllService()
        {
            return db.Services.ToList();
        }
    }
}
