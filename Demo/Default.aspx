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

           </div>
       </div>
       <br />
       <div class="row" id="FeaturedRaffles">






       </div>



   </div>

</asp:Content>
