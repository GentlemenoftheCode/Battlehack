using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Charity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String about = "This food-distribution program helps feed more than 1.5 million people per year citywide. Pitch in at the group’s Hunts Point warehouse preparing nonperishables collected from food drives for distribution, or volunteer at a local soup kitchen (call for a location near you). Through January, shop at A&P, Pathmark, Shop Rite, and Whole Foods, and $5 added to your grocery bill will provide a family of four with dinners for a week or more.";
            String website = "http://www.foodbanknyc.org/";
            String imgURL = "http://images.nymag.com/images/urban/03/holidayguide/charityguide/charity031117_2_125.jpg";

            DateTime date = DateTime.Now; // will give the date for today
            Endtime.Text = date.ToLongDateString();
        }
    }
}