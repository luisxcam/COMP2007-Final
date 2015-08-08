<%@ Page Title="CharacterSpell Details" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSpells.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterSpell" DataKeyNames="CharacterSpellsId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterSpell with CharacterSpellsId <%: Request.QueryString["CharacterSpellsId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CharacterSpell Details</legend>
							<!--<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CharacterSpellsId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CharacterSpellsId" ID="CharacterSpellsId" Mode="ReadOnly" />
								</div>
							</div>-->
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
									<strong>SpellId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Spell != null ? Item.Spell.Name : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

