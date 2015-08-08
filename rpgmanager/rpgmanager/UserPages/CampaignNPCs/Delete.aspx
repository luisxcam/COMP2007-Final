<%@ Page Title="CampaignNPCDelete" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="rpgmanager.UserPages.CampaignNPCs.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this CampaignNPC?</h3>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignNPC" DataKeyNames="CampaignNPCId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignNPC with CampaignNPCId <%: Request.QueryString["CampaignNPCId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete CampaignNPC</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CampaignNPCId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CampaignNPCId" ID="CampaignNPCId" Mode="ReadOnly" />
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
									<strong>NPCId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.NPC != null ? Item.NPC.Name : "" %>
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

