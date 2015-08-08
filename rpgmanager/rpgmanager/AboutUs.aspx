<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="rpgmanager.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashbaord_container">
        <div id="about-form" class="container">

            <h1>About Us</h1>
            <!-- TODO COMPANY LOGO -->
            <p>BSL has been improving lives through its revolutionary web applications. It utilizes strong agile software development strategies to develop the most user friendly powerful software to make common tasks much easier. BSL focuses on employee satisfaction and that is why we consider our organization more of a family and we welcome our clients to be part of that family too. If you every have any questions or ideas for our software we alway welcome input because we are always trying to excel at what we do and make your lives happier and simpler.</p>

            <h2>The Team</h2>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-4">
                        <div class="thumbnail">
                            <img src="Content/images/bsl_blaine.JPG" class="visible-lg" />
                            <div class="caption">
                                <h3>Blaine Parr</h3>
                                <p>Troubleshooting, Back-End Development, C# Master</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="thumbnail">
                            <img src="Content/images/bsl_luis.JPG" class="visible-lg" />
                            <div class="caption">
                                <h3>Luis Acevedo</h3>
                                <p>Troubleshooting, Back-End Support, Database Management, Git Management</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="thumbnail">
                            <img src="Content/images/bsl_steve.JPG" class="visible-lg" />
                            <div class="caption">
                                <h3>Stephen Ciprian</h3>
                                <p>Troubleshooting, Front End Development, Javascript, Bootstrap, Back-End Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
