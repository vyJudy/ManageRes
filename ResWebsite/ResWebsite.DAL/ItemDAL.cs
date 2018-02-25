using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResWebsite.DAL
{
    public class ItemDAL
    {
        ManageRestaurantEntities db = new ManageRestaurantEntities();
        public IEnumerable<Item> GetAllItem()
        {
            return db.Items.ToList();
        }
    }
}
