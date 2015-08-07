<%@ Page Title="CharacterEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.Characters.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Character" DefaultMode="Edit" DataKeyNames="CharacterId"
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
								DataTypeName="rpgmanager.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="WeaponId" 
								DataTypeName="rpgmanager.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="ArmourId" 
								DataTypeName="rpgmanager.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CharacterName" runat="server" />
						    <!--<asp:DynamicControl Mode="Edit" DataField="CharClass" runat="server" />-->
                            <div>
                                <asp:Label ID="CharClassLabel" runat="server" Text="CharClass"></asp:Label>
                                <asp:DropDownList ID="CharClassDropDownList" runat="server" CssClass="dropdown" SelectedValue="<%# BindItem.CharClass %>">
                                    <asp:ListItem Value="Warrior"></asp:ListItem>
                                    <asp:ListItem Value="Archer"></asp:ListItem>
                                    <asp:ListItem Value="Monk"></asp:ListItem>
                                    <asp:ListItem Value="White Mage"></asp:ListItem>
                                    <asp:ListItem Value="Black Mage"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
						    <asp:DynamicControl Mode="Edit" DataField="CharLevel" runat="server" />
						    <!--<asp:DynamicControl Mode="Edit" DataField="Gender" runat="server" />-->
                            <div>
                                <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue="<%# BindItem.Gender %>">
                                    <asp:ListItem Value="M" Text="Male"></asp:ListItem>
                                    <asp:ListItem Value="F" Text="Female"></asp:ListItem>
                                    <asp:ListItem Value="T" Text="Trans"></asp:ListItem>
                                    <asp:ListItem Value="O" Text="Other"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
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

