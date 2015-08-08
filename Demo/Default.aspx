<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Join a Charity Raffle Online</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Get Started &raquo;</a></p>
      </div>
    </div>
   

   <div class="col-xs-12" id="HomePage" >
       <div class="row">
           <div class="jumbotron" style="text-align:center">
               <h3>Join a Charity Raffle Online</h3>
               
               <h5>Join a raffle, get a chance to win cash money while helping a charity.</h5>

               <asp:Button runat="server" CssClass="btn btn-primary" Text="Join now!" />

                <div class="row">
                <div class="col-md-4"><img src="/images/american_national_redcross.jpg" alt="American Red Cross Logo" style="width:414px;height:414px;"></div>
                <div class="col-md-4"><img src="/images/feeding_america.jpg" alt="Feeding America Logo" style="width:414px;height:414px;"></div>
                <div class="col-md-4"><img src="/images/salvation_army.jpg" alt="Salvation Army Logo" style="width:414px;height:414px;"></div>
                </div>

               <div class="row">
                <div class="col-md-4"><img src="/images/task-force-for-global-health.jpg" alt="Task Force for Global Health Logo" style="width:414px;height:414px;"></div>
                <div class="col-md-4"><img src="/images/united-way.jpg" alt="United Way Logo" style="width:414px;height:414px;"></div>
                <div class="col-md-4"><img src="/images/goodwill-industries.jpg" alt="Goodwill Industries Intentational Logo" style="width:414px;height:414px;"></div>
               </div>

</div>

           </div>
       </div>
       <br />
       <div class="row" id="FeaturedRaffles">






       </div>



   </div>

</asp:Content>
