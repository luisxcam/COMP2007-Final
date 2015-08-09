﻿<%@ Page Title="SpellInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Spells.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Spell" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Spell</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label runat="server" Text="Name:"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" CssClass="form-control"/>
                    <asp:Label runat="server" Text="Description:"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" CssClass="form-control" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="CharClass" runat="server" />-->
                    <div>
                        <asp:Label ID="CharClassLabel" runat="server" Text="Class"></asp:Label>
                        <asp:DropDownList ID="CharClassDropDownList" runat="server" SelectedValue="<%# BindItem.CharClass %>" CssClass="form-control">
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Insert" DataField="Attribute" runat="server" />-->
                    <div>
                        <asp:Label ID="AttributeLabel" runat="server" Text="Attribute"></asp:Label>
                        <asp:DropDownList ID="AttributeDropDownList" runat="server" SelectedValue="<%# BindItem.Attribute %>" CssClass="form-control">
                            <asp:ListItem Value="Air"></asp:ListItem>
                            <asp:ListItem Value="Earth"></asp:ListItem>
                            <asp:ListItem Value="Water"></asp:ListItem>
                            <asp:ListItem Value="Fire"></asp:ListItem>
                            <asp:ListItem Value="Lightning"></asp:ListItem>
                            <asp:ListItem Value="Light"></asp:ListItem>
                            <asp:ListItem Value="Dark"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <label>Rate</label>
                    <asp:DynamicControl Mode="Insert" DataField="Rate" runat="server" CssClass="form-control" />
                    <label>Efficiency</label>
                    <asp:DynamicControl Mode="Insert" DataField="Efficiency" runat="server" CssClass="form-control" />
                    <label>Mana Required</label>
                    <asp:DynamicControl Mode="Insert" DataField="ManaRequired" runat="server" CssClass="form-control" />
                    <label>Chanting Time</label>
                    <asp:DynamicControl Mode="Insert" DataField="ChantingTime" runat="server" CssClass="form-control" />
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
