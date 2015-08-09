<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="col-xs-12">



        

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
                                    <h1>Be a Micro-Philanthropist!</h1>
                                    <h3>Half of every raffle ticket purchased goes directly to charity. The other half is added to a winnable "pot."</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide1" runat="server" CssClass="btn btn-hero btn-lg" Text="Browse Raffles" PostBackUrl="~/FindCharity.aspx" />
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-2"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>Get Rewarded for Being a Good Person!</h1>
                                    <h3>If your raffle ticket is selected, you win 50% of the total raffle sales for that raffle.</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide2" runat="server" CssClass="btn btn-hero btn-lg" Text="Give it a Try!" PostBackUrl="~/FindCharity.aspx" />
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-3"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>We Want to Help your Charity of Choice!</h1>
                                    <h3>Suggesting charities for consideration potentially gives them access to new donation streams.</h3>
                                </hgroup>
                                <asp:Button ID="ButtonSlide3" runat="server" CssClass="btn btn-hero btn-lg" Text="Pitch a Charity" PostBackUrl="~/SuggestCharity.aspx" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                
            </div>
            <br />
            <div class="row" id="FeaturedRaffles">
                <h1 style="text-align: center">We connect people to charities. Each ticket increases your chances 
                    and guarantees your favorite charity 50% of the winnings!
                </h1>
                <div class="row-fluid">
                    <h2 style="text-align: center">Our Featured Charities: </h2>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1000"><img src="/images/american_national_redcross.jpg" alt="American Red Cross Logo" class="featured-logo img-rounded"></a>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1002"><img src="/images/feeding-america.jpg" alt="Feeding America Logo" class="featured-logo img-rounded"></a>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1001"><img src="/images/salvation-army.jpg" alt="Salvation Army Logo" class="featured-logo img-rounded"></a>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1003"><img src="/images/task-force-for-global-health.jpg" alt="Task Force for Global Health Logo" class="featured-logo img-rounded"></a>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1004"><img src="/images/united-way.jpg" alt="United Way Logo" class="featured-logo img-rounded"></a>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="/Charity?ID=1005"><img src="/images/goodwill-industries.jpg" alt="Goodwill Industries Intentational Logo" class="featured-logo img-rounded"></a>
                    </div>
                </div>




            </div>

</div>
</asp:Content>
