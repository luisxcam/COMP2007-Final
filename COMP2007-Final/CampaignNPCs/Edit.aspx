<%@ Page Title="CampaignNPCEdit" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final.CampaignNPCs.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.CampaignNPC" DefaultMode="Edit" DataKeyNames="CampaignNPCId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignNPC with CampaignNPCId <%: Request.QueryString["CampaignNPCId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CampaignNPC</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="CampaignId" 
								DataTypeName="COMP2007_Final.Models.Campaign" 
								DataTextField="Title" 
								DataValueField="CampaignId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="NPCId" 
								DataTypeName="COMP2007_Final.Models.NPC" 
								DataTextField="Name" 
								DataValueField="NPCId" 
								UIHint="ForeignKey" runat="server" />
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

