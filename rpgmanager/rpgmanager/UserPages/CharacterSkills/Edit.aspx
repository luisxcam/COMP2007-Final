<%@ Page Title="CharacterSkillEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSkills.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterSkill" DefaultMode="Edit" DataKeyNames="CharacterSkillsId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterSkill with CharacterSkillsId <%: Request.QueryString["CharacterSkillsId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CharacterSkill</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="CharacterLabel" runat="server" Text="Character"></asp:Label>
                    <asp:DynamicControl Mode="Edit"
                        DataField="CharacterId"
                        DataTypeName="rpgmanager.Models.Character"
                        DataTextField="CharacterName"
                        DataValueField="CharacterId"
                        UIHint="ForeignKey" runat="server" />
                    <asp:Label ID="SkillLabel" runat="server" Text="Skill"></asp:Label>
                    <asp:DynamicControl Mode="Edit"
                        DataField="SkillId"
                        DataTypeName="rpgmanager.Models.Skill"
                        DataTextField="Name"
                        DataValueField="SkillId"
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

