<%@ Page Title="CharacterInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="DB_BSL.Characters.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="DB_BSL.Models.Character" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Character</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="UsernameId" 
								DataTypeName="DB_BSL.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="WeaponId" 
								DataTypeName="DB_BSL.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="ArmourId" 
								DataTypeName="DB_BSL.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharacterName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharClass" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharLevel" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Gender" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="HP" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Mana" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Strength" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Dexterity" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Constitution" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Intelligence" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Wisdom" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Charisma" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SkillPoints" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="StatPoints" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Speed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Gold" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Experience" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CarryWeight" runat="server" />
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
