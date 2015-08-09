<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="col-xs-12">

        <div class="row">

            <asp:Label ID="LabelOne" runat="server"></asp:Label>

            <div class="jumbotron" style="text-align: center">

                <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
                    <!-- Overlay -->
                    <div class="overlay"></div>

                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#bs-carousel" data-slide-to="1"></li>
                        <li data-target="#bs-carousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item slides active">
                            <div class="slide-1"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>Purchase a raffle ticket!</h1>
                                    <h3>Don't worry; we donate all profits to the host-charity</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide1" runat="server" CssClass="btn btn-hero btn-lg" Text="Browse Raffles" PostBackUrl="~/FindCharity.aspx" />
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-2"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>Suggest a Charity!</h1>
                                    <h3>We're always looking for new non-profits that could benefit from using our platform</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide2" runat="server" CssClass="btn btn-hero btn-lg" Text="Suggest a Charity" PostBackUrl="~/FindCharity.aspx" />
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-3"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>Browse Non-Profits!</h1>
                                    <h3>These charities count on you, and so do the people they help</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide3" runat="server" CssClass="btn btn-hero btn-lg" Text="Browse Charities" PostBackUrl="~/FindCharity.aspx" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                
            </div>
            <br />
            <div class="row" id="FeaturedRaffles">

                <div class="row-fluid">
                    <h2 style="text-align: center">Our Featured Charities: </h2>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/american_national_redcross.jpg" alt="American Red Cross Logo" class="featured-logo">
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/feeding-america.jpg" alt="Feeding America Logo" class="featured-logo">
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/salvation-army.jpg" alt="Salvation Army Logo" class="featured-logo">
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/task-force-for-global-health.jpg" alt="Task Force for Global Health Logo" class="featured-logo">
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/united-way.jpg" alt="United Way Logo" class="featured-logo">
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <img src="/images/goodwill-industries.jpg" alt="Goodwill Industries Intentational Logo" class="featured-logo">
                    </div>
                </div>




            </div>



        </div>
</asp:Content>
