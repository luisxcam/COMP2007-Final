<%@ Page Title="CampaignPlayerInsert" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.CampaignPlayers.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignPlayer" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert CampaignPlayer</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="CharacterLabel" runat="server" Text="Character"></asp:Label>
                    <asp:DynamicControl Mode="Insert"
                        DataField="CharacterId"
                        DataTypeName="rpgmanager.Models.Character"
                        DataTextField="CharacterName"
                        DataValueField="CharacterId"
                        UIHint="ForeignKey" runat="server" />
                    <asp:Label ID="CampaignLabel" runat="server" Text="Campaign"></asp:Label>
                    <asp:DynamicControl Mode="Insert"
                        DataField="CampaignId"
                        DataTypeName="rpgmanager.Models.Campaign"
                        DataTextField="Title"
                        DataValueField="CampaignId"
                        UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
