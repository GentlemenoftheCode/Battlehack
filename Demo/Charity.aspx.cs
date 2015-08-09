﻿using System;
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


                //needs more error checking in the future
                var raffle = record.Raffles[0];

                    //Populate the single raffles labels here
                    populateLabels(raffle);



                //Label workinglabel = new Label();
                //int i = 1;
                //foreach (var raff in raffles)
                //{
                //    workinglabel = cph.FindControl("raffleTitle" + i) as Label;
                   



                //    i++;
                //}
                

                
                //workinglabel = ("raffleDis" + i) as Label;
            }



           
            //CharityURL.Text = imgURL;

            //Calculate the days left.
            //REPLACE.
            DateTime endDate = UnixTimeStampToDateTime(1440025689);
            endTime1.Text = DaysTill(endDate);
           
        }
        protected void populateLabels(Raffle raf)
        {
            //sets correct website URL
            CharityWebsiteLink.HRef = record.WebsiteURL;
            //sets charity title
            CharityNameLabel.Text = record.Name;
            //sets charity description
            DescriptionLabel.Text = record.Description;
            //sets raffle end time
            DateTime endDate = raf.EndTime.Value;
            endTime1.Text = DaysTill(endDate);
            //sets raffle title
            raffleTitle1.Text = raf.Title;

            

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