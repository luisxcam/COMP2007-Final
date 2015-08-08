<%@ Page Title="Armour Details" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.UserPages.Armours.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Armour" DataKeyNames="ArmourId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Armour with ArmourId <%: Request.QueryString["ArmourId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Armour Details</legend>
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
									<strong>Armour Type</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ArmourType" ID="ArmourType" Mode="ReadOnly" />
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
									<strong>DefenseRate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DefenseRate" ID="DefenseRate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MagicDefense</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MagicDefense" ID="MagicDefense" Mode="ReadOnly" />
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

