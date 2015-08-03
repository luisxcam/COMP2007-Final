<%@ Page Title="ArmourInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="DB_BSL.Armours.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="DB_BSL.Models.Armour" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Armour</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ArmourType" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="JobSpecific" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DefenseRate" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MagicDefense" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Weight" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Attribute" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Enchantment" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MonetaryValue" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Rarity" runat="server" />
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
