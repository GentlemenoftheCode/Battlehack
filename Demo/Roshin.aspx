<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roshin.aspx.cs" Inherits="Demo.Roshin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    Day:
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    Date:
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
