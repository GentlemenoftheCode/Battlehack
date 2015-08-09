<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FCharity.aspx.cs" Inherits="Demo.FCharity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-12">

        
                    <hr>

                    <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right"> 
                                <asp:Label ID="endTime3" runat="server" Text="soon"></asp:Label>
                            </span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle3" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis3" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>
            <hr />
            <div class="row">
                <div class ="col-md-4">

                    <p>Hi</p>
                </div>
                <div class ="col-md-4">
                    <p>dfgdfgd</p>
                </div>>
                <div class ="col-md-4">
                    <p class="lead">How Many Tickets?</p>
                    <div class="form-inline">
                        <div class="form-group ">
                            <div class ="col-sm-8">
                                <input id="quantity" type="text" runat="server" class="form-control" placeholder="Number of tickets.">
                            </div>
                            <div class ="col-sm-4">
                                 <p class="text-center">x $5.00</p>
                            </div>
 
                        </div>
                    </div>
                    <br />
                    <div class="col-sm-12 text-center">
                        <button type="submit" class="btn btn-default btn-lg" id ="Submit" runat="server" OnClick="" >Calculate</button>
                    </div>
                    <br />
                    <asp:Label ID="TotalText" runat="server" Text=""></asp:Label>
                    <div class="alert alert-danger" role="alert" runat="server" id="alertBox" visible="false">
                       <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                       <span class="sr-only">Error:<asp:Label ID="inputError" runat="server" Text="YouShouldn'tSeeThis"></asp:Label></span>
                       Enter a valid email address
                    </div>
                </div>
            </div>

                </div>
         </div>
</asp:Content>
