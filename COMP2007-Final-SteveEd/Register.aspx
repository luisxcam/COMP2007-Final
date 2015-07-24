<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="COMP2007_Final_SteveEd.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6 col-md-push-3 game-container">
            <h4 style="font-size: medium">Register a new user</h4>
            <hr />
            <p>
                <asp:Literal runat="server" ID="StatusMessage" />
            </p>
            <div>
                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" />
            </div>
            <asp:Label runat="server" AssociatedControlID="UserFirstName">First Name</asp:Label>
            <asp:TextBox runat="server" ID="UserFirstName" />
            <asp:Label runat="server" AssociatedControlID="UserLastName">Last Name</asp:Label>
            <asp:TextBox runat="server" ID="UserLastName" />
            <div>
                <asp:Label runat="server" AssociatedControlID="UserEmail">Email</asp:Label>
                <asp:TextBox runat="server" ID="UserEmail" />
            </div>
            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
            <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" />
        </div>
    </div>
</asp:Content>
