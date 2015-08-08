<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pat.aspx.cs" Inherits="Demo.Pat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div style="height: 100px"></div>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="row">
                <div class="col-md-3 box">
                    <h4>Please choose one.</h4>
                    <asp:DropDownList runat="server" ID="queryDDL">
                        <asp:ListItem>Option 1</asp:ListItem>
                        <asp:ListItem>Option 2</asp:ListItem>
                        <asp:ListItem>Option 3</asp:ListItem>
                        <asp:ListItem>Option 4</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3 col-md-offset-1 box">


                    <asp:Label ID="Label1" runat="server" CssClass="label label-default" Text="This text will change upon button-click."></asp:Label>


                </div>
                <div class="col-md-3 col-md-offset-1 box">

                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Pls." OnClick="Button1_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
