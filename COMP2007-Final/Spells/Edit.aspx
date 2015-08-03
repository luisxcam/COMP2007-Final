<%@ Page Title="SpellEdit" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final.Spells.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Spell" DefaultMode="Edit" DataKeyNames="SpellsId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Spell with SpellsId <%: Request.QueryString["SpellsId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Spell</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CharClass" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Attribute" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Rate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Efficiency" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ManaRequired" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ChantingTime" runat="server" />
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

