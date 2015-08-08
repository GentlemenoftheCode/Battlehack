using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Demo.Controllers
{
    public class CharityController : ApiController
    {
        public struct charity
        {
            public int CharityID { get; set; }
            public string Name { get; set; }
            public string Description { get; set; }
            public string Tags { get; set; }


        }


        // GET: api/Charity
        public charity[] Get()
        {

            dbDataContext db = new dbDataContext();

            var all = from p in db.Charities
                      select p;

            List<charity> list = new List<charity>();

            foreach(var val in all)
            {
                charity addMe = new charity();

                addMe.CharityID = val.CharityID;
                addMe.Name = val.Name;
                addMe.Description = val.Description;
                addMe.Tags = val.Tags;

                list.Add(addMe);

            }
            
            return list.ToArray();


        }

        // GET: api/Charity/5
        public string Get(int id)
        {
            return "value";
        }

      
    }
}
