<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FCharity.aspx.cs" Inherits="Demo.Charity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">

        <div class="thumbnail" id="JP">
                    <div class="col-md-12">

                        <asp:Label ID="CharityNameLabel" runat="server" Text="Label" Font-Bold Font-Size ="30"   ></asp:Label>
                            
                        <div align="center">
                            <img src ="/images/believe.png" alt ="There should be an image here" />
                        </div>

                        <div align="right">
                            <label
                            <asp:Label ID="TotalRaisedLabel" runat="server" Text="Label" Font-Bold Font-Size="25"></asp:Label>
                        </div>
                        <div align ="center">
                            <asp:Label ID="DescriptionLabel" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>

        <div class="well" id="Roshin">

                    <div class="text-right">
                        <a class="btn btn-success">Suggest a Charity</a>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right">Ends <asp:Label ID="endTime1" runat="server" Text="soon"></asp:Label></span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle1" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis1" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <hr>

                     <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right">Ends <asp:Label ID="endTime2" runat="server" Text="soon"></asp:Label></span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle2" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis2" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">

                            <span class="pull-right">Ends <asp:Label ID="endTime3" runat="server" Text="soon"></asp:Label></span>
                            <p class="lead">
                                <asp:Label ID="raffleTitle3" runat="server" Text="Title"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="raffleDis3" runat="server" Text="raffle description"></asp:Label>
                            </p>
                        </div>
                    </div>

                </div>
         </div>
</asp:Content>
