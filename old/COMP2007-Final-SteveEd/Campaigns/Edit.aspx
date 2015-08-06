<%@ Page Title="CampaignEdit" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final_SteveEd.Campaigns.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final_SteveEd.Models.Campaign" DefaultMode="Edit" DataKeyNames="CampaignId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Campaign with CampaignId <%: Request.QueryString["CampaignId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Campaign</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="UsernameId" 
								DataTypeName="COMP2007_Final_SteveEd.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CreationDate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="NextSessionDate" runat="server" />
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

