<%@ Page Title="CharacterSkillDelete" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSkills.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this CharacterSkill?</h3>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterSkill" DataKeyNames="CharacterSkillsId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterSkill with CharacterSkillsId <%: Request.QueryString["CharacterSkillsId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete CharacterSkill</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CharacterSkillsId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CharacterSkillsId" ID="CharacterSkillsId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CharacterId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Character != null ? Item.Character.CharacterName : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SkillId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Skill != null ? Item.Skill.Name : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

