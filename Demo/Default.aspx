<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div style="height: 100px"></div>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="row">
                <div class="col-md-3 box">
                    <h4>Please choose one.</h4>
                    <asp:DropDownList runat="server" ID="queryDDL">
                        <asp:ListItem>People order our patties (POOP)</asp:ListItem>
                        <asp:ListItem>Farts</asp:ListItem>
                        <asp:ListItem>Dick butt</asp:ListItem>
                        <asp:ListItem>Dick butt farts</asp:ListItem>
                        ayayayayayayayyayyaayaay
                    </asp:DropDownList>
                </div>
                <%--<div class="col-md-3 col-md-offset-1 box">


                    <asp:Label ID="Label1" runat="server" CssClass="label label-default" Text="Placeholder"></asp:Label>


                </div>--%>
                <div class="col-md-3 col-md-offset-1 box">
                      
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Go to hell pat" OnClick="Button1_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
