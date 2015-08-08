using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Pat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Lick my butthole.";
        }

        protected void queryDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            patLabel1.Text = queryDDL.SelectedItem.Text;
        }
    }
}