<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12 ">

        <div class="panel panel-default ">
            <div class="panel-body charity-panel-body">
                <div class="col-md-4" style="text-align: center;">
                    <asp:Image runat="server" ID="imageLogo" CssClass="regular-logo" />
                    <asp:Label ID="CharityLinkLabel" runat="server" CssClass="btn btn-link"><a id="CharityWebsiteLink" runat="server">View this charities website</a></asp:Label>

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
                <asp:UpdatePanel runat="server" ID="raffleUP">
                    <ContentTemplate>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Raffle Info</h3>
                            </div>
                            <div class="panel-body">


                                <span class="pull-right"></span>
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

                                    <div class="row" style="border: 1px solid #ffd800; height: auto">
                                        <div class="col-xs-2">
                                            <asp:Label runat="server">How Many Tickets?</asp:Label>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:TextBox runat="server" ID="numTicketsBox" CssClass="form-control"></asp:TextBox>
                                            <asp:Button runat="server" ID="calcPriceBtn" OnClick="calcPriceBtn_Click" Text="Calculate" CssClass="btn btn-primary" />

                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label runat="server"> x $5.00 = </asp:Label>

                                        </div>
                                        <div class="col-md-1">
                                            <asp:Label runat="server" ID="paymentAmount"></asp:Label>

                                        </div>

                                    </div>

                                    <br />
                                    <div class="col-sm-12 text-center">
                                    </div>
                                    <br />
                                    <div class="alert alert-danger" role="alert" runat="server" id="alertBox" visible="false">
                                        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                        <span class="sr-only">Error:<asp:Label ID="inputError" runat="server" Text="YouShouldn'tSeeThis"></asp:Label></span>
                                        Enter a valid email address
                                    </div>
                                    <%--<div class="card-container manual-flip hover">
                                        <div class="front">
                                            <div class="content">
                                                <div class="main">
                                                    content in here
                                                    
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    more content

                                                </div>
                                                <div class="footer">
                                                    <button class="btn btn-simple" onclick="rotateCard(this)">
                                                        
                                                        Flip here
                                                    </button>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="back">
                                            back content in here
                                        </div>



                                    </div>--%>
                                </div>
                            </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <script type="text/javascript">




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



    </script>




</asp:Content>
