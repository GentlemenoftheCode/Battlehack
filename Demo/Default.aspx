<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="col-xs-12" id="HomePage">
        <div class="row">
            <div class="jumbotron" style="text-align: center">
                <h3>Join a Charity Raffle Online</h3>

                <h5>Join a raffle, get a chance to win cash money while helping a charity.</h5>

                <asp:Button ID="getStartedButton" runat="server" CssClass="btn btn-primary" Text="Get Started!" PostBackUrl="~/Charity.aspx"/>

            </div>

        </div>

        <br />
        <div class="row" id="FeaturedRaffles">

            <div class="row-fluid">
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/american_national_redcross.jpg" alt="American Red Cross Logo" class="featured-logo"></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/feeding-america.jpg" alt="Feeding America Logo" class="featured-logo"></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/salvation-army.jpg" alt="Salvation Army Logo" class="featured-logo"></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/task-force-for-global-health.jpg" alt="Task Force for Global Health Logo" class="featured-logo"></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/united-way.jpg" alt="United Way Logo" class="featured-logo" ></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <img src="/images/goodwill-industries.jpg" alt="Goodwill Industries Intentational Logo" class="featured-logo"></div>
            </div>




        </div>



    </div>

</asp:Content>
