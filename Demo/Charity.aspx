<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12 page">

        <div class="row">
            <div class="col-md-6" >
                 <img src="/images/believe.png" alt="There should be an image here" height="200" width="300" />

            </div>
            <div class="col-md-6">
                <p>
                        <asp:Label ID="CharityNameLabel" runat="server" Text="Label" CssClass="NameLabel"></asp:Label>
                    </p>
                    <asp:Label ID="StaticRaisedLabel" runat="server" Text="Raised so far: " CssClass="StaticRaisedLabel"></asp:Label>
                    <asp:Label ID="TotalRaisedLabel" runat="server" Text="Label" CssClass="RaisedLabel"></asp:Label>
                <div>
                    <asp:Label ID="DescriptionLabel" runat="server" CssClass="DescLabel"></asp:Label>
                </div>
            </div>
        </div>

               <div class="well" id="Roshin">

                    <div class="text-right">
                        <a class="btn btn-success">Suggest a Charity</a>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right"><asp:Label ID="endTime1" runat="server" Text="soon"></asp:Label></span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle1" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis1" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <hr>

                     <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right"><asp:Label ID="endTime2" runat="server" Text="soon"></asp:Label></span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle2" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis2" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right"> 
                                <asp:Label ID="endTime3" runat="server" Text="soon"></asp:Label>
                            </span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle3" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis3" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                </div>
    </div>





</asp:Content>
