<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="rpgmanager.Default1" %>

<%@ MasterType VirtualPath="~/MasterPages/Default.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!--Main Logged Off Section-->
    <asp:PlaceHolder runat="server" ID="NotAuthenticatedHomePage" Visible="false">
        <div class="row">
            <div id="welcome_banner" class="jumbotron col-md-8 col-md-push-2 text-center">
                <h1><span class="no_mobile">Welcome to your personal</span> Dungeon Manager</h1>
                <p>Whichever tabletop game you play, we can help you manage all of your campaigns in one convenient location.</p>
                <div class="button-div">
                    <a class="btn btn-lg btn-custom" href="/Register.aspx">Create an account now!</a>
                    <img src="http://res.cloudinary.com/dffqiamzz/image/upload/v1439015421/12_sided_die_black_ydrzlr.png" alt="twenty sided orange die" />
                </div>
            </div>
        </div>
        <!--Ads-->
        <div class="banner-grids row">
            <div class="col-md-4 banner-grid">
                <h3>Play With Friends</h3>
                <p>Join a campaign that your friends are a part of or start your own as the Dungeon Master(DM) and invite others to play in it.</p>
            </div>
            <div class="col-md-4 banner-grid">
                <h3>Create Characters</h3>
                <p>Easily create a character sheet to access and update from anywhere. You can view others' characters, and record their experience, inventory and skills.</p>
            </div>
            <div class="col-md-4 banner-grid">
                <h3>Manage Campaigns</h3>
                <p>It's never been easier to be a DM. Pick from a database of inventory items, enmeies and NPCs, or add your own cutsom ones that you can share with other DMs.</p>
            </div>
        </div>
    </asp:PlaceHolder>

    <!--Authenticated webpage-->
    <asp:PlaceHolder runat="server" ID="AuthenticatedHomePage" Visible="false">
        <div class="screencast container-fluid">
            <div class="text-center">
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/lFKhLZsj5Lk"></iframe>
                </div>
            </div>
        </div>
    </asp:PlaceHolder>
</asp:Content>
