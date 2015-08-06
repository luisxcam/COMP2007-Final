<%@ Page Title="WeaponInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Weapons.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Weapon" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert Weapon</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="WeaponType" runat="server" />-->
                    <div>
                        <asp:Label ID="WeaponTypeLabel" runat="server" Text="WeaponType"></asp:Label>
                        <asp:DropDownList ID="WeaponTypeDropDownList" runat="server" SelectedValue="<%# BindItem.WeaponType %>">
                            <asp:ListItem Value="Bow"></asp:ListItem>
                            <asp:ListItem Value="Crossbow"></asp:ListItem>
                            <asp:ListItem Value="Dagger"></asp:ListItem>
                            <asp:ListItem Value="Shortsword"></asp:ListItem>
                            <asp:ListItem Value="Longsword"></asp:ListItem>
                            <asp:ListItem Value="Warhammer"></asp:ListItem>
                            <asp:ListItem Value="Staff"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Insert" DataField="JobSpecific" runat="server" />-->
                    <div>
                        <asp:Label ID="JobSpecificLabel" runat="server" Text="JobSpecific"></asp:Label>
                        <asp:DropDownList ID="JobSpecificDropDownList" runat="server" SelectedValue="<%# BindItem.JobSpecific %>">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:DynamicControl Mode="Insert" DataField="AttackRate" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="MagicAttack" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Weight" runat="server" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="Attribute" runat="server" />-->
                    <div>
                        <asp:Label ID="AttributeLabel" runat="server" Text="Attribute"></asp:Label>
                        <asp:DropDownList ID="AttributeDropDownList" runat="server" SelectedValue="<%# BindItem.Attribute %>">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Air"></asp:ListItem>
                            <asp:ListItem Value="Earth"></asp:ListItem>
                            <asp:ListItem Value="Water"></asp:ListItem>
                            <asp:ListItem Value="Fire"></asp:ListItem>
                            <asp:ListItem Value="Lightning"></asp:ListItem>
                            <asp:ListItem Value="Light"></asp:ListItem>
                            <asp:ListItem Value="Dark"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:DynamicControl Mode="Insert" DataField="Enchantment" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="MonetaryValue" runat="server" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="Rarity" runat="server" />-->
                    <div>
                        <asp:Label ID="RarityLabel" runat="server" Text="Rarity"></asp:Label>
                        <asp:DropDownList ID="RarityDropDownList" runat="server" SelectedValue="<%# BindItem.Rarity %>">
                            <asp:ListItem Value="Common"></asp:ListItem>
                            <asp:ListItem Value="Uncommon"></asp:ListItem>
                            <asp:ListItem Value="Rare"></asp:ListItem>
                            <asp:ListItem Value="Legendary"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
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
