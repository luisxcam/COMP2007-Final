<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="rpgmanager.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div id="signup-form" class="col-md-6 col-md-push-3">
            <h3>Register <span class="no_mobile">a new user</span></h3>
            <hr />
            <p>
                <asp:Literal runat="server" ID="StatusMessage" />
            </p>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="UserName">User name:</asp:Label>
                <asp:TextBox autofocus="true" runat="server" placeholder="Enter a user name with no spaces" CssClass="form-control" ID="UserName" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="UserEmail">Email:</asp:Label>
                <asp:TextBox runat="server" placeholder="Please enter your email" CssClass="form-control" ID="UserEmail" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password">Password:</asp:Label>
                <asp:TextBox runat="server" placeholder="Enter a password with a minimum of 6 characters" CssClass="form-control" ID="Password" TextMode="Password" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password:</asp:Label>
                <asp:TextBox runat="server" placeholder="Please confirm your password" CssClass="form-control" ID="ConfirmPassword" TextMode="Password" />
            </div>
            <div class="button-div">
                <asp:Button runat="server" CssClass="btn btn-custom" OnClick="CreateUser_Click" Text="Register" />
            </div>
        </div>
    </div>
        </div>
</asp:Content>
