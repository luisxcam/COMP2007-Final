<%@ Page Title="CampaignNPC Details" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="COMP2007_Final.CampaignNPCs.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.CampaignNPC" DataKeyNames="CampaignNPCId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignNPC with CampaignNPCId <%: Request.QueryString["CampaignNPCId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CampaignNPC Details</legend>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

