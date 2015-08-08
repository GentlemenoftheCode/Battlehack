using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Roshin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime hello = Calendar1.SelectedDate;
            Label1.Text = hello.DayOfWeek.ToString();
            Label2.Text = hello.Date.ToString();
        }
    }
}