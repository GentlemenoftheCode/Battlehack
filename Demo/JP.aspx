<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JP.aspx.cs" Inherits="Demo.JP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p> slks</p>
    <asp:DropDownList ID="MenuDDL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="MenuDDL_SelectedIndexChanged">
        <asp:ListItem Text="cock"></asp:ListItem>
        <asp:ListItem Text="balls"></asp:ListItem>    

    </asp:DropDownList>
    <asp:Label ID ="stuff" Text ="Hi"></asp:Label>
    </asp:Content>