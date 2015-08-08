using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braintree;
namespace Demo
{
    public partial class Roshin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var gateway = new BraintreeGateway
            {
                Environment = Braintree.Environment.SANDBOX,
                MerchantId = "78c2hsmmg73s6sdg",
                PublicKey = "jsyrqbxq2fqv456k",
                PrivateKey = "004b6691b796db322c57c71343ecf592"
            };

        }

    }
}