<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="rpgmanager.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row" id="contact-form">
            <div>
                <h1>Contact Us</h1>
            </div>
            <div class="col-md-5">
                <p>We would love to hear from you. If you have any questions or concerns with using our product feel free to contact us</p>
                <p><i class="fa fa-phone"></i>Phone:705-555-5555</p>
                <p><i class="fa fa-envelope"></i>Email:BTS@DungeonManaager.com</p>
                <p>
                    <i class="fa fa-map-marker"></i>Address:
                    <br />
                    4368 Commerce Park<br />
                    Barrie,ON<br />
                    L4V 2M9
                </p>
            </div>

            <div class="col-md-7">
                <div class="form-group">
                    <label>What name do you go by? </label>
                    <input type="text" class="form-control" name="contact-name-textbox" />
                </div>
                <div class="form-group">
                    <label>What's your email? </label>
                    <input type="text" class="form-control" name="contact-name-textbox" />
                </div>
                <div class="form-group">
                    <label>Share with us any information that will help us with your request </label>
                    <input type="text" class="form-control" name="contact-name-textbox" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
