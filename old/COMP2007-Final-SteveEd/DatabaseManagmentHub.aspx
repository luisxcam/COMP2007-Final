<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DatabaseManagmentHub.aspx.cs" Inherits="COMP2007_Final_SteveEd.DatabaseManagmentHub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard_container">
        <h1>Dungeon Manager Hub</h1>
        <div class="btn-group btn-group-vertical">
            <a href="/Items/" class="btn btn-primary">Manage Items</a>
            <a href="/Armours/" class="btn btn-primary">Manage Armour</a>
            <a href="/Weapons/" class="btn btn-primary">Manage Weapons</a>
            <a href="NPCs" class="btn btn-primary">Manage NPCs</a>
            <a href="/Enemies/" class="btn btn-primary">Manage Enemies</a>
        </div>
    </div>
</asp:Content>
