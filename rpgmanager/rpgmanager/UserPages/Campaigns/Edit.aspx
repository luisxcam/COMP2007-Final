<%@ Page Title="CampaignEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.Campaigns.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Campaign" DefaultMode="Edit" DataKeyNames="CampaignId"
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
								DataTypeName="rpgmanager.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
						    <!--<asp:DynamicControl Mode="Insert" DataField="CreationDate" runat="server" />-->
                            <div>
                                <asp:Label ID="CreationDateLabel" runat="server" Text="CreationDate"></asp:Label>
                                <asp:TextBox ID="CreationDateTextBox" CssClass="datepicker" runat="server" Text="<%# BindItem.CreationDate %>"></asp:TextBox>
                            </div>
                            <!--<asp:DynamicControl Mode="Insert" DataField="NextSessionDate" runat="server" />-->
                            <div>
                                <asp:Label ID="NextSessionDateLabel" runat="server" Text="NextSessionDate"></asp:Label>
                                <asp:TextBox ID="NextSessionTextBox" CssClass="datepicker" runat="server" Text="<%# BindItem.NextSessionDate %>"></asp:TextBox>
                            </div>
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

