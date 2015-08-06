<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div id="welcome_banner" class="jumbotron col-md-8 col-md-push-2 text-center">
            <h1>Welcome to your personal Dungeon Manager</h1>
            <p>Whichever tabletop game you play, we can help you manage all of your campaigns in one convenient location.</p>
            <div class="button-div">
                <a class="btn btn-lg btn-custom" href="/Register.aspx">Create an account now!</a>
                <img src="http://res.cloudinary.com/dffqiamzz/image/upload/v1438178645/twenty_sided_die_small_jiaots.png" alt="twenty sided orange die" />
            </div>
        </div>
    </div>
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
</asp:Content>
