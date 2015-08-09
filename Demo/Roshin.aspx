<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roshin.aspx.cs" Inherits="Demo.Roshin" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="checkout" method="post" action="/checkout">
        <div id="payment-form"></div>
        <input type="submit" value="Pay $10">
    </form>
    <asp:HiddenField ID="cTK" runat="server" />
    <script src="https://js.braintreegateway.com/v2/braintree.js"></script>
    <script>
        // We generated a client token for you so you can test out this code
        // immediately. In a production-ready integration, you will need to
        // generate a client token on your server (see section below).
        var clientToken = document.getElementById("MainContent_cTK").value;
        braintree.setup(clientToken, "dropin", {
            container: "payment-form"
        });
    </script>
</asp:Content>
