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
        public static dbDataContext db = new dbDataContext();
        public static int? charityID;
        public static Charity record = new Charity();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //Parse the query string
                charityID = int.Parse(Request.QueryString["ID"]);
                if (charityID == null)
                {

                    Response.Redirect("FindCharity.aspx");

                }

                ContentPlaceHolder cph = FindControl("MainContent") as ContentPlaceHolder;

                //Get the charity being worked with
                record = db.Charities.Single(p => p.CharityID == charityID);



                var raffles = (from p in db.Raffles
                              where p.CharityID == charityID
                              select p).ToList();
                if(raffles != null)
                {
                    //Populate the single raffles labels here
                    populateLabels();

                }

                //Label workinglabel = new Label();
                //int i = 1;
                //foreach (var raff in raffles)
                //{
                //    workinglabel = cph.FindControl("raffleTitle" + i) as Label;
                   



                //    i++;
                //}
                

                
                //workinglabel = ("raffleDis" + i) as Label;
            }



            String Name = "This charity's name";
            String TotalRaised = "$700";
            String about = "This food-distribution program helps feed more than 1.5 million people per year citywide. Pitch in at the group’s Hunts Point warehouse preparing nonperishables collected from food drives for distribution, or volunteer at a local soup kitchen (call for a location near you). Through January, shop at A&P, Pathmark, Shop Rite, and Whole Foods, and $5 added to your grocery bill will provide a family of four with dinners for a week or more.";
            String website = "http://www.foodbanknyc.org/";
            String imgURL = "http://images.nymag.com/images/urban/03/holidayguide/charityguide/charity031117_2_125.jpg";
            CharityNameLabel.Text = Name;
            TotalRaisedLabel.Text = TotalRaised;
            DescriptionLabel.Text = about;
            //CharityURL.Text = imgURL;

            //Calculate the days left.
            //REPLACE.
            DateTime endDate = UnixTimeStampToDateTime(1440025689);
            endTime1.Text = DaysTill(endDate);
            endTime2.Text = DaysTill(endDate);
            endTime3.Text = DaysTill(endDate);
        }
        protected void populateLabels()
        {

            CharityWebsiteLink.HRef = record.WebsiteURL;


        }


        public static String DaysTill(DateTime endDate)
        {
            DateTime today = DateTime.Today;
            DateTime next = endDate.AddYears(today.Year - endDate.Year);
            if (next < today)
                next = next.AddYears(1);

            int numDays = (next - today).Days;
            if (numDays > 0)
            {
                return "Ends in " + numDays.ToString() + " days";
            }
            else if (numDays == 0)
            {
                return "Ends Today (midnight GMT+5)";
            }
            else
                return "Ended";

        }

        // Creates a DateTime from a timestamp.
        public static DateTime UnixTimeStampToDateTime(double unixTimeStamp)
        {
            // Unix timestamp is seconds past epoch
            System.DateTime dtDateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc);
            dtDateTime = dtDateTime.AddSeconds(unixTimeStamp).ToLocalTime();
            return dtDateTime;
        }
    }
}