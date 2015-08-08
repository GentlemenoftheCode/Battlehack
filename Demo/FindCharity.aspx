﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindCharity.aspx.cs" Inherits="Demo.FindCharity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <div style="height: 10px"></div>
    <div class="col-md-12">

        <table id="example" class="display">
            <thead>
                <tr>
                    <th>Name</th>
                    <th></th>
                    <th>Description</th>
                    <th>Tags</th>

                </tr>
            </thead>
        </table>

    </div>

    <script type="text/javascript">

        var playerUrl = '/api/Charity';
        //var statusCode = '?app=1'

        $(document).ready(function () {

            $('#example').DataTable(
            {

                'ajax': {
                    'url': playerUrl,
                    'type': 'GET',
                    "dataSrc": ""
                },
                'columns': [
                    { 'data': 'Name' },
                    { 'data': 'CharityID'},
                    { 'data': 'Description' },
                    { 'data': 'Tags' }

                ],
                "columnDefs": [{
                    "targets": -1,
                    "data": null,
                    "defaultContent": "<button>Click!</button>"
                }]
            }
            );


            $('#example tbody').on('click', 'button', function () {
                var data = table.row($(this).parents('tr')).data();
                alert(data.Name + "'s id is: " + data.CharityID);
            });

        });


    </script>


</asp:Content>
