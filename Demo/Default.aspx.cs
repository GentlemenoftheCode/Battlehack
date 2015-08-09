using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security.Twitter;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using Owin;



namespace Demo
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {

                LabelOne.Text = Context.User.Identity.GetUserName();
                
                
            }
            else
            {
               
            


            }

        }

     
    }
}