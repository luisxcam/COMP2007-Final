<%@ Page Title="CharacterSpellEdit" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final.CharacterSpells.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.CharacterSpell" DefaultMode="Edit" DataKeyNames="CharacterSpellsId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterSpell with CharacterSpellsId <%: Request.QueryString["CharacterSpellsId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CharacterSpell</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="CharacterId" 
								DataTypeName="COMP2007_Final.Models.Character" 
								DataTextField="CharacterName" 
								DataValueField="CharacterId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="SpellId" 
								DataTypeName="COMP2007_Final.Models.Spell" 
								DataTextField="Name" 
								DataValueField="SpellsId" 
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

