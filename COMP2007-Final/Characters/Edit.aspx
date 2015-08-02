<%@ Page Title="CharacterEdit" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final.Characters.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Character" DefaultMode="Edit" DataKeyNames="CharacterId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Character with CharacterId <%: Request.QueryString["CharacterId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Character</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="UsernameId" 
								DataTypeName="COMP2007_Final.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="WeaponId" 
								DataTypeName="COMP2007_Final.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="ArmourId" 
								DataTypeName="COMP2007_Final.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CharacterName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CharClass" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CharLevel" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Gender" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="HP" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Mana" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Strength" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Dexterity" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Constitution" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Intelligence" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Wisdom" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Charisma" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="SkillPoints" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="StatPoints" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Speed" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Gold" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Experience" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CarryWeight" runat="server" />
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

