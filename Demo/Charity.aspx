<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">

        <div class="thumbnail" id="JP">
                    <div class="col-md-6">
                        
                        <asp:Label ID="CharityNameLabel" runat="server" Text="Label" CssClass="NameLabel"   ></asp:Label>
                            
                        <div style="text-align: left;">
                            
  
                            <asp:Label ID="TotalRaisedLabel" runat="server" Text="Label" CssClass="RaisedLabel" Font-Size="25"></asp:Label>
                        </div>
                        <div >
                            <asp:Label ID="DescriptionLabel" runat="server" CssClass="DescLabel"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src ="/images/believe.png" alt ="There should be an image here" />
                </div>

        <div class="well" id="Roshin">

                    <div class="text-right">
                        <a class="btn btn-success">Leave a Review</a>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">10 days ago</span>
                            <p>This product was great in terms of quality. I would definitely buy another!</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">12 days ago</span>
                            <p>I've alredy ordered another one!</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">15 days ago</span>
                            <p>I've seen some better than this, but not at this price. I definitely recommend this item.</p>
                        </div>
                    </div>

                </div>
         </div>
</asp:Content>
