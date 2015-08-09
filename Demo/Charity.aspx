<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12 ">

        <div class="panel panel-default ">
            <div class="panel-body charity-panel-body">
                <div class="col-md-4" style="text-align: center;">
                    <asp:Image runat="server" ID="imageLogo" CssClass="regular-logo" />
                    <asp:Label ID="CharityLinkLabel" runat="server" CssClass="btn btn-link"><a id="CharityWebsiteLink" runat="server">View this charity's website</a></asp:Label>

                </div>
                <div class="col-md-8">
                    <p>
                        <asp:Label ID="CharityNameLabel" runat="server" Text="Label" CssClass="NameLabel"></asp:Label>
                    </p>
                    <div>
                        <asp:Label ID="DescriptionLabel" runat="server" CssClass="DescLabel"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="text-right">
                <a class="btn btn-success">Suggest a Charity</a>
            </div>--%>


        <div class="row">
            <div class="col-md-12">
                <%-- begin bootstrap panel for raffle --%>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>Raffle Info</h3>
                    </div>
                    <div class="panel-body">


                        <div class="col-md-4">
                            <div class="row raffleSection">
                                <div class="col-md-5">
                                    <asp:Label ID="StaticMoneyRaised" runat="server" Text="Money raised:" CssClass="raffleStaticLabel"></asp:Label><br />

                                </div>
                                <div class="col-md-7">
                                    <asp:Label ID="MoneyRaisedLabel" runat="server" CssClass="raffleDynamicLabel"></asp:Label><br />

                                </div>

                            </div>
                            <div class="row raffleSection">
                                <div class="col-md-5">
                                    <asp:Label ID="StaticEndLabel" runat="server" Text="Raffle ends in: " CssClass="raffleStaticLabel"></asp:Label><br />

                                </div>
                                <div class="col-md-7">
                                    <asp:Label ID="raffleEndLabel" runat="server" CssClass="raffleDynamicLabel"></asp:Label>
                                </div>

                            </div>
                            <div class="row raffleSection">
                                <div class="col-md-5">
                                    <asp:Label ID="StaticPrizeLabel" runat="server" Text="Current prize amount: " CssClass="raffleStaticLabel"></asp:Label><br />

                                </div>
                                <div class="col-md-7">
                                    <asp:Label ID="PrizeLabel" runat="server" CssClass="raffleDynamicLabel"></asp:Label><br />

                                </div>

                            </div>
                            <div class="row raffleSection">
                                <div class="col-md-5">
                                    <asp:Label ID="StaticEnteredlabel" runat="server" Text="# of People entered: " CssClass="raffleStaticLabel"></asp:Label><br />

                                </div>
                                <div class="col-md-7">
                                    <asp:Label ID="EnteredLabel" runat="server" CssClass="raffleDynamicLabel"></asp:Label><br />

                                </div>

                            </div>
                        </div>
                        <link href="Content/rotating-card.css" rel="stylesheet" />

                        <div class="col-md-8">
                            <asp:UpdatePanel runat="server" ID="raffleUP">
                                <ContentTemplate>
                                    <div class="row paymentCalcArea">
                                        <div class="col-xs-3">
                                            <asp:Label runat="server" CssClass="raffleStaticLabel">How Many Tickets?</asp:Label>
                                        </div>
                                        <div class="col-md-4" style="text-align: center">
                                            <asp:TextBox runat="server" ID="numTicketsBox" CssClass="form-control"></asp:TextBox>
                                            <br />
                                            <asp:Button runat="server" ID="calcPriceBtn" OnClick="calcPriceBtn_Click" OnClientClick="spawnPayment();" Text="Calculate" CssClass="btn btn-primary" />

                                        </div>
                                        <div class="col-md-3">
                                            <asp:Label runat="server" CssClass="raffleStaticLabel"> x $5.00 = </asp:Label>

                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label runat="server" CssClass="raffleDynamicLabel" ID="paymentAmount"></asp:Label>
                                            
                                        </div>

                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <div id="paymentArea" class="col-sm-12 text-center paymentArea invisible">
                                <asp:Label runat="server">Pay with Braintree now!</asp:Label>
                                <form id="checkout" method="post" action="/checkout">
                                    <div id="payment-form"></div>
                                    <input type="submit">
                                </form>
                                <asp:HiddenField ID="cTK" runat="server" />
                            </div>
                            <br />
                            <div class="alert alert-danger" role="alert" runat="server" id="alertBox" visible="false">
                                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                <span class="sr-only">Error:<asp:Label ID="inputError" runat="server" Text="YouShouldn'tSeeThis"></asp:Label></span>
                                Enter a valid email address
                            </div>

                        </div>
            </div>
                    
            </div>
        </div>
    </div>
            <script src="https://js.braintreegateway.com/v2/braintree.js"></script>

    <script type="text/javascript">


        $(function () {

            // We generated a client token generated on the server.
            var clientToken = document.getElementById("MainContent_cTK").value;
            braintree.setup(clientToken, "dropin", {
                container: "payment-form"
            });



        });

        function rotateCard(btn) {
            var $card = $(btn).closest('.card-container');
            console.log($card);
            if ($card.hasClass('hover')) {
                $card.removeClass('hover');
                alert("card has class, removing");

            }
            else {
                $card.addClass('hover');
                alert("added class to card");
            }




        }
        function spawnPayment() {
            //Check if there is a value in it
            if (document.getElementById('MainContent_numTicketsBox').value != "") {
                //Now make sure it is visible
                if ($('#paymentArea').hasClass("visible")) {
                    //continue...

                }
                else {
                    $('#paymentArea').removeClass("invisible");
                    $('#paymentArea').addClass("visible");

                }
                
            }
            else {
                
                //Check if it is visible, if so make it invis
                if ($('#paymentArea').hasClass("visible")) {
                    $('#paymentArea').removeClass("visible");
                    $('#paymentArea').addClass("invisible");
                }
                

               
            }

            
           

            
        }

        


    </script>
    


</asp:Content>
