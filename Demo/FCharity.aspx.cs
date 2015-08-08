using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class FCharity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Calculate the days left.
            //REPLACE.
            DateTime endDate = UnixTimeStampToDateTime(1440025689);
            endTime1.Text = DaysTill(endDate);
            endTime2.Text = DaysTill(endDate);
            endTime3.Text = DaysTill(endDate);
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