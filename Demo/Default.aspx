<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="col-xs-12 page">

        <div class="row">



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
                                    <h1>We are creative</h1>
                                    <h3>Get start your next awesome project</h3>
                                </hgroup>
                                <button class="btn btn-hero btn-lg" role="button">See all features</button>
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-2"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>We are smart</h1>
                                    <h3>Get start your next awesome project</h3>
                                </hgroup>
                                <button class="btn btn-hero btn-lg" role="button">See all features</button>
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-3"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>We are amazing</h1>
                                    <h3>Get start your next awesome project</h3>
                                </hgroup>
                                <button class="btn btn-hero btn-lg" role="button">See all features</button>
                            </div>
                        </div>
                    </div>


                    <h3>Join a Charity Raffle Online</h3>
                    <h5>Join a raffle, get a chance to win cash money while helping a charity.</h5>
                    <asp:Button ID="getStartedButton" runat="server" CssClass="btn btn-primary" Text="Get Started!" PostBackUrl="~/FindCharity.aspx" />

                </div>
            </div>

            <br />
            <div class="row" id="FeaturedRaffles">

                <div class="row-fluid">
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
