<%@ Page Language="C#" Title="Welcome to the RPG THING" MasterPageFile="~/Master Pages/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Final.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Tables</h2>
    <div>
        <a href="/Armours">Armours</a>
    </div>
    <div>
        <a href="/Campaigns">Campaigns</a>
    </div>
    <div>
        <a href="/Characters">Characters</a>
    </div>
    <div>
        <a href="/Enemies">Enemies</a>
    </div>
    <div>
        <a href="/Items">Items</a>
    </div>
    <div>
        <a href="/NPCs">NPCs</a>
    </div>
    <div>
        <a href="/Skills">Skills</a>
    </div>
    <div>
        <a href="/Spells">Spells</a>
    </div>
    <div>
        <a href="/Users">Users</a>
    </div>
    <div>
        <a href="/Weapons">Weapons</a>
    </div>
    <h2>Conjunction Tables</h2>
    <div>
        <a href="/CampaignEnemies">Campaign Enemies</a>
    </div>
    <div>
        <a href="/CampaignNPCs">Campaign NPCs</a>
    </div>
    <div>
        <a href="/CampaignPlayers/">Campaign Characters</a>
    </div>
    <div>
        <a href="/CharacterItems">Character Items</a>
    </div>
    <div>
        <a href="/CharacterSpells">Character Spells</a>
    </div>
</asp:Content>