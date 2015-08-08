<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">

        <div class="thumbnail" id="JP">
            <div class="col-md-6">
                <div style="text-align: left;">
                    <p>
                        <asp:Label ID="CharityNameLabel" runat="server" Text="Label" CssClass="NameLabel"></asp:Label>
                    </p>
                    <asp:Label ID="TotalRaisedLabel" runat="server" Text="Label" CssClass="RaisedLabel"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="DescriptionLabel" runat="server" CssClass="DescLabel"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="/images/believe.png" alt="There should be an image here" height="200" width="300" />
        </div>

      
    </div>
</asp:Content>
