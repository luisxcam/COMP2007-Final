﻿<%@ Page Title="EnemyEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Enemies.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Enemy" DefaultMode="Edit" DataKeyNames="EnemyId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Enemy with EnemyId <%: Request.QueryString["EnemyId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Enemy</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="CharLevel" runat="server" />
                    <!--<asp:DynamicControl Mode="Edit" DataField="Race" runat="server" />-->
                    <div>
                        <asp:Label ID="RaceLabel" runat="server" Text="Race"></asp:Label>
                        <asp:DropDownList ID="RaceDropDownList" runat="server" SelectedValue="<%# BindItem.Race %>">
                            <asp:ListItem Value="Human"></asp:ListItem>
                            <asp:ListItem Value="Elf"></asp:ListItem>
                            <asp:ListItem Value="Dwarf"></asp:ListItem>
                            <asp:ListItem Value="Gnome"></asp:ListItem>
                            <asp:ListItem Value="Half-Orc"></asp:ListItem>
                            <asp:ListItem Value="Halfling"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Edit" DataField="CharClass" runat="server" />-->
                    <div>
                        <asp:Label ID="CharClassLabel" runat="server" Text="CharClass"></asp:Label>
                        <asp:DropDownList ID="CharClassDropDownList" runat="server" SelectedValue="<%# BindItem.CharClass %>">
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:DynamicControl Mode="Edit" DataField="HP" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="Mana" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="ArmourRate" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="WeaponDamage" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="MagicAttack" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="MagicDefense" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="Speed" runat="server" />
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

