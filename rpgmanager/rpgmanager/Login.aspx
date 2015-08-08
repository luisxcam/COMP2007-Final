<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="rpgmanager.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
        <div class="row">
            <div class="col-md-7">
                <!--TODO-->
            </div>
            <div id="login-form" class="col-md-4 col-md-pull-1">

                <h1>Log In</h1>
                <hr />
                <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                    <div>
                        <h4 id="login_greeting_header" class="align-center">
                            <asp:Literal runat="server" ID="StatusText" />
                        </h4>

                    </div>
                </asp:PlaceHolder>
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
