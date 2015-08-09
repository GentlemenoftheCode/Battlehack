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

            //alertBox.Style("visible", "false");
        }

        public void Button_Click1()
        {
            //Validate and get the number.
            int qTix = StringToNum(quantity.Value);
            if (qTix == -1)
            {
                //Error.
            }
            else if(qTix <= 0)
            {
                //Error.
            }
            else
            {
                //Calculate the number.
                int Total = qTix * 5;
                //Show the answer.
            }

            
        }

        /*StringToNum
        Returns an intger if valid; -1 otherwise;
        */
        public static int StringToNum(String inputString)
        {
            string numString = "";
            foreach (char c in inputString)
            {
                if (Char.IsDigit(c) )
                {
                    numString += c;
                }
                else{
                    return -1;
                }
                return int.Parse(numString); ;
            }

            return 0;

        }

    }
}