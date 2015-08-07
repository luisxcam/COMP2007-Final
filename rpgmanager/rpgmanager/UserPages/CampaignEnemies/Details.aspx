<%@ Page Title="CampaignEnemy Details" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.UserPages.CampaignEnemies.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignEnemy" DataKeyNames="CampaignEnemyId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignEnemy with CampaignEnemyId <%: Request.QueryString["CampaignEnemyId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CampaignEnemy Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CampaignEnemyId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CampaignEnemyId" ID="CampaignEnemyId" Mode="ReadOnly" />
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
								<div class="col-sm-2 text-right">
									<strong>EnemyId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Enemy != null ? Item.Enemy.Name : "" %>
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

