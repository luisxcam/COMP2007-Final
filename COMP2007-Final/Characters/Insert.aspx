﻿<%@ Page Title="CharacterInsert" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="COMP2007_Final.Characters.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Character" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Character</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="UsernameId" 
								DataTypeName="COMP2007_Final.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="WeaponId" 
								DataTypeName="COMP2007_Final.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="ArmourId" 
								DataTypeName="COMP2007_Final.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharacterName" runat="server" />
						    <!--<asp:DynamicControl Mode="Insert" DataField="CharClass" runat="server" />-->
                            <asp:Label ID="CharClassLabel" runat="server" Text="CharClass"></asp:Label>
                            <asp:DropDownList ID="CharClassDropDownList" runat="server" CssClass="dropdown" SelectedValue="<%# BindItem.CharClass %>">
                                <asp:ListItem Value="Warrior"></asp:ListItem>
                                <asp:ListItem Value="Archer"></asp:ListItem>
                                <asp:ListItem Value="Monk"></asp:ListItem>
                                <asp:ListItem Value="White Mage"></asp:ListItem>
                                <asp:ListItem Value="Black Mage"></asp:ListItem>
                            </asp:DropDownList>
						    <asp:DynamicControl Mode="Insert" DataField="CharLevel" runat="server" />
						    <!--<asp:DynamicControl Mode="Insert" DataField="Gender" runat="server" />-->
                            <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" SelectedValue="<%# BindItem.Gender %>">
                                <asp:ListItem Value="M"></asp:ListItem>
                                <asp:ListItem Value="F"></asp:ListItem>
                            </asp:DropDownList>
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
