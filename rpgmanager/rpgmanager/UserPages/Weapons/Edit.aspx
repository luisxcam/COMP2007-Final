<%@ Page Title="WeaponEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Weapons.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Weapon" DefaultMode="Edit" DataKeyNames="WeaponId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Weapon with WeaponId <%: Request.QueryString["WeaponId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Weapon</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="WeaponType" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="JobSpecific" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="AttackRate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MagicAttack" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Weight" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Attribute" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Enchantment" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MonetaryValue" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Rarity" runat="server" />
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

