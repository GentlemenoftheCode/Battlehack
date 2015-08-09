<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="col-xs-12 page">

        <div class="row">
            <div class="jumbotron" style="text-align: center">
                <h3>Join a Charity Raffle Online</h3>
                <h5>Join a raffle, get a chance to win cash money while helping a charity.</h5>
                <asp:Button ID="getStartedButton" runat="server" CssClass="btn btn-primary" Text="Get Started!" PostBackUrl="~/FindCharity.aspx" />


                <div class="row">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                            <li data-target="#myCarousel" data-slide-to="4"></li>
                            <li data-target="#myCarousel" data-slide-to="5"></li>
                            <li data-target="#myCarousel" data-slide-to="6"></li>
                            <li data-target="#myCarousel" data-slide-to="7"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active" id="slide1">
                                <div class="carousel-caption">
                                    <img src="http://placehold.it/1200x500" alt="Large carousel image">
                                    <%--<h4>Purchase Tickets to Raffles!</h4>
                                <p>Don't worry, all proceeds besides the prize get donated to the host-charity</p>--%>
                                </div>
                                <!-- end carousel-caption-->
                            </div>
                            <div class="item">
                                <img src="images/PickleStand.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/DefillipesStandPose.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/VeggieStand.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/ProduceSale.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/SoapStand.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/ShoppingVeggies.jpg" />
                            </div>
                            <div class="item">
                                <img src="images/StackedVeggies.jpg" />
                            </div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                   <%-- <div class="carousel slide" data-ride="carousel" id="myCarousel">

                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                            <li data-slide-to="1" data-target="#myCarousel"></li>
                            <li data-slide-to="2" data-target="#myCarousel"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">

                            <!-- end item -->

                            <div class="item" id="slide2">
                                <div class="carousel-caption">
                                    <img src="http://placehold.it/1200x500" alt="Large carousel image">
                                    <%--<h4>Check Out Other Charities!</h4>
                                <p>Our site allows you to connect with the non-profits that help those who need it most</p>--%>
                                </div>
                                <!-- end carousel-caption-->
                            </div>
                            <!-- end item -->

                            <div class="item" id="slide3">
                                <div class="carousel-caption">
                                    <img src="http://placehold.it/1200x500" alt="Large carousel image">
                                    <%-- <h4>Sign Your Charity Up!</h4>
                                <p>We're always looking for non-profits that can benefit from our raffles</p>--%>
                                </div>
                                <!-- end carousel-caption-->
                            </div>
                            <!-- end item -->
                        </div>
                        <!-- carousel-inner -->

                        <!-- Controls -->
                        <a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
                        <a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>

                    </div>--%>
                    <!-- end myCarousel -->
                </div>


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
