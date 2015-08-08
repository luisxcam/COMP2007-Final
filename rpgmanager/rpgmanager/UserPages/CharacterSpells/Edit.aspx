<%@ Page Title="CharacterSpellEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSpells.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterSpell" DefaultMode="Edit" DataKeyNames="CharacterSpellsId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterSpell with CharacterSpellsId <%: Request.QueryString["CharacterSpellsId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CharacterSpell</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label runat="server" Text="Character Name:" />
                    <asp:DynamicControl Mode="Edit"
                        DataField="CharacterId"
                        DataTypeName="rpgmanager.Models.Character"
                        DataTextField="CharacterName"
                        DataValueField="CharacterId"
                        UIHint="ForeignKey" runat="server" />
                    <asp:Label runat="server" Text="Spell:" />
                    <asp:DynamicControl Mode="Edit"
                        DataField="SpellId"
                        DataTypeName="rpgmanager.Models.Spell"
                        DataTextField="Name"
                        DataValueField="SpellsId"
                        UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

