<%@ Page Title="ItemInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Items.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Item" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Item</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MonetaryValue" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Weight" runat="server" />
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
