<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pat.aspx.cs" Inherits="Demo.Pat" %>

<asp:Content ID="PatContent" ContentPlaceHolderID="MainContent" runat="server">


    <div style="height: 100px"></div>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="row">
                <div class="col-md-3 box">
                    <h4>Please choose one.</h4>
                    <asp:DropDownList runat="server" ID="queryDDL" AutoPostBack="true" OnSelectedIndexChanged="queryDDL_SelectedIndexChanged">
                        <asp:ListItem>Pls.</asp:ListItem>
                        <asp:ListItem>Nop.</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3 col-md-offset-1 box">


                    <asp:Label ID="Label1" runat="server" CssClass="label label-default"></asp:Label>
                    <asp:Label ID="patLabel1" runat="server"></asp:Label>


                </div>
                <div class="col-md-3 col-md-offset-1 box">
                      
            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Pls." OnClick="Button2_Click" />


                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>