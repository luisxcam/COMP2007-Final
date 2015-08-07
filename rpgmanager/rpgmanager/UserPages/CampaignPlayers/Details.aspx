<%@ Page Title="CampaignPlayer Details" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.UserPages.CampaignPlayers.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignPlayer" DataKeyNames="CampaignPlayerId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignPlayer with CampaignPlayerId <%: Request.QueryString["CampaignPlayerId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CampaignPlayer Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CampaignPlayerId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CampaignPlayerId" ID="CampaignPlayerId" Mode="ReadOnly" />
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

