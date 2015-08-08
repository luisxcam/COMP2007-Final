<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="ManagementHub.aspx.cs" Inherits="rpgmanager.UserPages.ManagementHub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard_container panel">
        <h1>Dungeon Manager Hub</h1>
        <div class="btn-group btn-group-vertical">
            <a href="Armours/Default.aspx" class="btn btn-primary">Armours</a>
            <a href="Campaigns/Default.aspx" class="btn btn-primary">Campaigns</a>
            <a href="Characters/Default.aspx" class="btn btn-primary">Characters</a>
            <a href="Enemies/Default.aspx" class="btn btn-primary">Enemies</a>
            <a href="Items/Default.aspx" class="btn btn-primary">Items</a>
            <a href="NPCs/Default.aspx" class="btn btn-primary">NPCs</a>
            <a href="Skills/Default.aspx" class="btn btn-primary">Skills</a>
            <a href="Spells/Default.aspx" class="btn btn-primary">Spells</a>
            <a href="Weapons/Default.aspx" class="btn btn-primary">Weapons</a>
            <a href="CharacterSheet.aspx" class="btn btn-primary">Character Sheet</a>
            <a href="ViewCampaign.aspx" class="btn btn-primary">View Campaign</a>
            <a href="ViewCharacters.aspx" class="btn btn-primary">View Characters</a>
            <a href="CampaignEnemies/Default.aspx" class="btn-primary">Campaign Enemies</a>
            <a href="CampaignNPCs/Default.aspx" class="btn btn-primary">Campaign NPCs</a>
            <a href="CampaignPlayers/Default.aspx" class="btn btn-primary">Campaign Players</a>
            <a href="CharacterItems/Default.aspx" class="btn btn-primary">Character Items</a>
            <a href="CharacterSkills/Default.aspx" class="btn btn-primary">Character Skills</a>
            <a href="CharacterSpells/Default.aspx" class="btn btn-primary">Character Spells</a>
        </div>
    </div>
</asp:Content>
