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



           

            //Calculate the days left.
            //REPLACE.
            //DateTime endDate = UnixTimeStampToDateTime(1440025689);
            //endTime1.Text = DaysTill(endDate);
           
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
            raffleEndLabel.Text = DaysTill(endDate);
            //sets raffle title
            
            //sets raised dollars
            MoneyRaisedLabel.Text = "$" + ((int)(raf.RaisedDollars)).ToString();
            //sets time until end
            //TimeSpan tilEnd = (TimeSpan)(raf.EndTime - DateTime.Now);
            //EndLabel.Text = tilEnd.TotalDays.ToString();
                //sets current prize amount
            PrizeLabel.Text = ((int)(raf.RaisedDollars) / 2).ToString();

            EnteredLabel.Text = (raf.TicketsEntered).ToString();

            

            

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
                return numDays.ToString() + " days";
            }
            else if (numDays == 0)
            {
                return "Today (midnight GMT+5)";
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

        

        /*StringToNum
        Returns an intger if valid; -1 otherwise;
        */
        public static int StringToNum(String inputString)
        {
            string numString = "";
            if(inputString.Length == 0)
            {
                return -1;
            }
            foreach (char c in inputString)
            {
                if (Char.IsDigit(c))
                {
                    numString += c;
                }
                else
                {
                    return -1;
                }
                
            }
            return int.Parse(numString);

        }

        protected void calcPriceBtn_Click(object sender, EventArgs e)
        {
            //Validate and get the number.
            int qTix = StringToNum(numTicketsBox.Text);
            if (qTix == -1)
            {
                //Error.
            }
            else if (qTix <= 0)
            {
                //Error.
            }
            else
            {
                //Calculate the number.
                int Total = qTix * 5;
                //Show the answer.
                paymentAmount.Text = Total.ToString();
            }
        }
    }
}