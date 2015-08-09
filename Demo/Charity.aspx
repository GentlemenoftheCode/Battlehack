<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12 ">

        <div class="panel panel-default ">
            <div class="panel-body charity-panel-body">
                <div class="col-md-4" style="text-align: center;">
                    <img src="/images/photo.jpg" alt="There should be an image here" class="regular-logo " />

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


                                <span class="pull-right">
                                    <asp:Label ID="endTime1" runat="server" Text="soon"></asp:Label></span>
                                <div class="col-md-6">
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
                                            <asp:Label ID="EndLabel" runat="server" CssClass="raffleDynamicLabel"></asp:Label><br />

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
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>





</asp:Content>
