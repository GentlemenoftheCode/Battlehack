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
            DateTime endDate = new DateTime(1440025689);

            DateTime today = DateTime.Today;
            DateTime next = endDate.AddYears(today.Year - endDate.Year);

            if (next < today)
                next = next.AddYears(1);

            int numDays = (next - today).Days;
            Console.Write(numDays);
            endTimethree.Text = numDays.ToString();
        }
    }
}