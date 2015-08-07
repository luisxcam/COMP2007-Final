<%@ Page Title="CampaignEnemyInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.CampaignEnemies.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignEnemy" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert CampaignEnemy</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="CampaignId" 
								DataTypeName="rpgmanager.Models.Campaign" 
								DataTextField="Title" 
								DataValueField="CampaignId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="EnemyId" 
								DataTypeName="rpgmanager.Models.Enemy" 
								DataTextField="Name" 
								DataValueField="EnemyId" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
