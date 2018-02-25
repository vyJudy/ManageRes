using ResWebsite.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResWebsite.BLL
{
    public class ServiceBLL
    {
        ServiceDAL dal = new ServiceDAL();
        /// <summary>
        /// get all event services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Service> GetEventServices()
        {
            var list = dal.GetAllService();
            return list.Where(x=>x.ServiceType.Contains("Event"));
        }
        /// <summary>
        /// get all wedding services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Service> GetWeddingServices()
        {
            var list = dal.GetAllService();
            return list.Where(x => x.ServiceType.Contains("Wedding"));
        }
        /// <summary>
        /// get all conference services to show in sevice list when reserve
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Service> GetConferenceServices()
        {
            var list = dal.GetAllService();
            return list.Where(x => x.ServiceType.Contains("Conference"));
        }
    }
}
