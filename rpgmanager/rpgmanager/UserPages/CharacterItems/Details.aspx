<%@ Page Title="CharacterItem Details" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.CharacterItems.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterItem" DataKeyNames="CharacterItemId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterItem with CharacterItemId <%: Request.QueryString["CharacterItemId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CharacterItem Details</legend>
							<!--<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CharacterItemId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CharacterItemId" ID="CharacterItemId" Mode="ReadOnly" />
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
									<strong>ItemId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Item != null ? Item.Item.Name : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Quantity</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Quantity" ID="Quantity" Mode="ReadOnly" />
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

