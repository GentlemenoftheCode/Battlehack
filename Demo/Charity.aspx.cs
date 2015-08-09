using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braintree;
using Microsoft.AspNet.Identity;
using System.Text;
namespace Demo
{
    public partial class Charity : System.Web.UI.Page
    {
        public static dbDataContext db = new dbDataContext();
        public static int? charityID;
        public static Charity record = new Charity();
        public static BraintreeGateway gateway = new BraintreeGateway();
        protected void Page_Load(object sender, EventArgs e)
        {
            var gateway = new BraintreeGateway
            {
                //Auth with the BrainTree Api
                Environment = Braintree.Environment.SANDBOX,
                MerchantId = "78c2hsmmg73s6sdg",
                PublicKey = "jsyrqbxq2fqv456k",
                PrivateKey = "004b6691b796db322c57c71343ecf592"
            };


            if (!IsPostBack)
            {
                //Generate Client Token. 
                var clientToken = gateway.ClientToken.generate();
                String clientTK = clientToken;
                cTK.Value = clientToken;

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

            }
            else
            {
                //Get the post back var.
                //decimal amount = decimal.Parse(numTicketsBox.Text) * 5;
                var nonceFromTheClient = Request.Form["payment_method_nonce"];
                if(paymentAmount.Text != string.Empty)
                {
                    decimal amount = (decimal.Parse(paymentAmount.Text.TrimStart('$')));
                    //Create a transition.
                    var request = new TransactionRequest
                    {
                        Amount = amount,
                        PaymentMethodNonce = nonceFromTheClient
                    };

                    Result<Transaction> result = gateway.Transaction.Sale(request);
                    if (result.IsSuccess() == true)
                    {
                        handlePayment(result);

                    }
                    else
                    {

                        StatusLabel.Text = "Something went wrong with your payment! Refresh the page and try again?";
                         StatusLabel.CssClass = "label-error";

                    }
                }
                
            }


        }

        protected void submitPayment()
        {
            
            
            
        }

        protected void handlePayment(Result<Transaction> result)
        {
            //Obtain some information about the successfull payment
            //So that we can populate the database with the appropriate 
            //number of tickets for that person
            var costPerTicket = 5;
            var id = result.Target.Id;
            var amount = result.Target.Amount;
            var date = result.Target.UpdatedAt;
            var numTickets = amount / costPerTicket;
            for(int i = 0; i < numTickets; i++)
            {
                Ticket newTicket = new Ticket();
                newTicket.UserName = Context.User.Identity.GetUserName();
                //This needs to be changed in the future
                newTicket.RaffleID = record.Raffles[0].RaffleID;
                newTicket.TicketPrice = costPerTicket;
                newTicket.DateSubmitted = (DateTime)date;
                newTicket.TransactionID = id;

                db.Tickets.InsertOnSubmit(newTicket);


            }

            db.SubmitChanges();

            StatusLabel.Text = "Congrats, you're a philanthropist now!";
            StatusLabel.CssClass = "label-confirm";

        }


        protected void populateLabels(Raffle raf)
        {
            //populate the picture
            imageLogo.ImageUrl = record.ImageLink;


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
            if (inputString.Length == 0)
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
            if (qTix <= 0)
            {
                paymentAmount.Text = "";
               
                StatusLabel.Text = "Aww, unfortunately you can't buy no tickets. ";
               StatusLabel.CssClass = "label-error";
            }
            else
            {
                StatusLabel.Text = "";
                StatusLabel.CssClass = "label-confirm";

                //Calculate the number.
                int Total = qTix * 5;
                //Show the answer.
                paymentAmount.Text = "$" + Total.ToString();
            }
        }
    }
}