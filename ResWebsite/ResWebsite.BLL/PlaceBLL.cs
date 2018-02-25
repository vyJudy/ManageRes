using ResWebsite.DAL;
using System.Collections.Generic;

namespace ResWebsite.BLL
{
    public class PlaceBLL
    {
        PlaceDAL dal = new PlaceDAL();
        public IEnumerable<Place> GetAllPlace()
        {
            return dal.GetAllPlace();
        }
    }
}
