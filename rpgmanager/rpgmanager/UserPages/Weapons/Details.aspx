<%@ Page Title="Weapon Details" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.UserPages.Weapons.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Weapon" DataKeyNames="WeaponId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Weapon with WeaponId <%: Request.QueryString["WeaponId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Weapon Details</legend>

							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Name</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>WeaponType</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="WeaponType" ID="WeaponType" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>JobSpecific</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="JobSpecific" ID="JobSpecific" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>AttackRate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="AttackRate" ID="AttackRate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MagicAttack</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MagicAttack" ID="MagicAttack" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Weight</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Weight" ID="Weight" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Attribute</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Attribute" ID="Attribute" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Enchantment</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Enchantment" ID="Enchantment" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MonetaryValue</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MonetaryValue" ID="MonetaryValue" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Rarity</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Rarity" ID="Rarity" Mode="ReadOnly" />
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

