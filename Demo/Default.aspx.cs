﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                

            }
            else
            {



            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string param = queryDDL.SelectedItem.Text;

            Response.Redirect("About.aspx");



        }
    }
}