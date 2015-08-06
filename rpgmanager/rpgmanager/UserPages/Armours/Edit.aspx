<%@ Page Title="ArmourEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Armours.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Armour" DefaultMode="Edit" DataKeyNames="ArmourId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Armour with ArmourId <%: Request.QueryString["ArmourId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Armour</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ArmourType" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="JobSpecific" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DefenseRate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MagicDefense" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Weight" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Attribute" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Enchantment" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MonetaryValue" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Rarity" runat="server" />
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

