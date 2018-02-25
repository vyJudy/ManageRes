using ResWebsite.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResWebsite.BLL
{
    public class ItemBLL
    {
        ItemDAL dal = new ItemDAL();
        public IEnumerable<Item> GetAllItem()
        {
            return dal.GetAllItem();
        }
    }
}
