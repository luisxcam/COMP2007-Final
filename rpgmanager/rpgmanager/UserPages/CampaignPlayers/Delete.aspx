<%@ Page Title="CampaignPlayerDelete" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="rpgmanager.UserPages.CampaignPlayers.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this CampaignPlayer?</h3>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignPlayer" DataKeyNames="CampaignPlayerId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignPlayer with CampaignPlayerId <%: Request.QueryString["CampaignPlayerId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Player from Campaign</legend>
							<!--<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CampaignPlayerId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CampaignPlayerId" ID="CampaignPlayerId" Mode="ReadOnly" />
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
									<strong>CampaignId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Campaign != null ? Item.Campaign.Title : "" %>
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

