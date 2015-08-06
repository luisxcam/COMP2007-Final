<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="ManagementHub.aspx.cs" Inherits="rpgmanager.UserPages.ManagementHub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard_container">
        <h1>Dungeon Manager Hub</h1>
        <div class="btn-group btn-group-vertical">
            <a href="Items/Default.aspx" class="btn btn-primary">Manage Items</a>
            <a href="Armours/Default.aspx" class="btn btn-primary">Manage Armour</a>
            <a href="Weapons/Default.aspx" class="btn btn-primary">Manage Weapons</a>
            <a href="NPCs/Default.aspx" class="btn btn-primary">Manage NPCs</a>
            <a href="Enemies/Default.aspx" class="btn btn-primary">Manage Enemies</a>
        </div>
    </div>
</asp:Content>
