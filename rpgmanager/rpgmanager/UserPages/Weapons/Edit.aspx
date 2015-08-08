<%@ Page Title="WeaponEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Weapons.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Weapon" DefaultMode="Edit" DataKeyNames="WeaponId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Weapon with WeaponId <%: Request.QueryString["WeaponId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Weapon</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label runat="server" Text="Name:"/>
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server"  CssClass="form-control"/>
                    <!--<asp:DynamicControl Mode="Edit" DataField="WeaponType" runat="server" />-->
                    <div>
                        <asp:Label ID="WeaponTypeLabel" runat="server" Text="WeaponType"></asp:Label>
                        <asp:DropDownList ID="WeaponTypeDropDownList" runat="server" SelectedValue="<%# BindItem.WeaponType %>" CssClass="form-control">
                            <asp:ListItem Value="Bow"></asp:ListItem>
                            <asp:ListItem Value="Crossbow"></asp:ListItem>
                            <asp:ListItem Value="Dagger"></asp:ListItem>
                            <asp:ListItem Value="Shortsword"></asp:ListItem>
                            <asp:ListItem Value="Longsword"></asp:ListItem>
                            <asp:ListItem Value="Warhammer"></asp:ListItem>
                            <asp:ListItem Value="Staff"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Edit" DataField="JobSpecific" runat="server" />-->
                    <div>
                        <asp:Label ID="JobSpecificLabel" runat="server" Text="JobSpecific"></asp:Label>
                        <asp:DropDownList ID="JobSpecificDropDownList" runat="server" SelectedValue="<%# BindItem.JobSpecific %>"  CssClass="form-control">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:Label runat="server" Text="Attack Rate:"/>
                    <asp:DynamicControl Mode="Edit" DataField="AttackRate" runat="server"  CssClass="form-control"/>
                    <asp:Label runat="server" Text="Magic Attack:"/>
                    <asp:DynamicControl Mode="Edit" DataField="MagicAttack" runat="server"  CssClass="form-control"/>
                    <asp:Label runat="server" Text="Weight:"/>
                    <asp:DynamicControl Mode="Edit" DataField="Weight" runat="server"  CssClass="form-control"/>
                    <!--<asp:DynamicControl Mode="Edit" DataField="Attribute" runat="server" />-->
                    <div>
                        <asp:Label ID="AttributeLabel" runat="server" Text="Attribute"></asp:Label>
                        <asp:DropDownList ID="AttributeDropDownList" runat="server" SelectedValue="<%# BindItem.Attribute %>" CssClass="form-control">
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
                    <asp:Label runat="server" Text="Enchantment:"/>
                    <asp:DynamicControl Mode="Edit" DataField="Enchantment" runat="server"  CssClass="form-control"/>
                    <asp:Label runat="server" Text="Value:"/>
                    <asp:DynamicControl Mode="Edit" DataField="MonetaryValue" runat="server"  CssClass="form-control"/>
                    <!--<asp:DynamicControl Mode="Edit" DataField="Rarity" runat="server" />-->
                    <div>
                        <asp:Label ID="RarityLabel" runat="server" Text="Rarity"></asp:Label>
                        <asp:DropDownList ID="RarityDropDownList" runat="server" SelectedValue="<%# BindItem.Rarity %>" CssClass="form-control">
                            <asp:ListItem Value="Common"></asp:ListItem>
                            <asp:ListItem Value="Uncommon"></asp:ListItem>
                            <asp:ListItem Value="Rare"></asp:ListItem>
                            <asp:ListItem Value="Legendary"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
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

