<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP2007_Final_SteveEd.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
        <div id="dashbaordHomePage">
        <p>
            <asp:Literal runat="server" ID="StatusText" />
        </p>
               <img src="http://res.cloudinary.com/dffqiamzz/image/upload/v1438821379/loginDashboardBackground_ucb031.jpg" alt="" />
            </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
        <div class="row">
            <div class="col-md-7">
                <!--TODO-->
            </div>
            <div id="login-form" class="col-md-4 col-md-pull-1">

                <h3>Log In</h3>
                <hr />
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                    <asp:TextBox autofocus="true" CssClass="form-control" runat="server" ID="UserName" />
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="Password" TextMode="Password" />
                </div>
                <div class="button-div">
                    <asp:Button CssClass="btn btn-large btn-custom" runat="server" OnClick="SignIn" Text="Log in" />
                </div>
                <p>Don't have an account? Click here to <a href="/Register.aspx">Signup</a>.</p>
            </div>
        </div>
    </asp:PlaceHolder>

</asp:Content>
