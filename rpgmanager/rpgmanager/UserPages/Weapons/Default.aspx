<%@ Page Title="WeaponList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.Weapons.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Weapons List</h2>
        <p class="btn btn-default">
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="WeaponId"
                ItemType="rpgmanager.Models.Weapon"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Weapons
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table id="styledTable" class="table">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="WeaponId" CommandName="Sort" CommandArgument="WeaponId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="WeaponType" CommandName="Sort" CommandArgument="WeaponType" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="JobSpecific" CommandName="Sort" CommandArgument="JobSpecific" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="AttackRate" CommandName="Sort" CommandArgument="AttackRate" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="MagicAttack" CommandName="Sort" CommandArgument="MagicAttack" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Weight" CommandName="Sort" CommandArgument="Weight" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Attribute" CommandName="Sort" CommandArgument="Attribute" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Enchantment" CommandName="Sort" CommandArgument="Enchantment" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="MonetaryValue" CommandName="Sort" CommandArgument="MonetaryValue" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Rarity" CommandName="Sort" CommandArgument="Rarity" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                    <asp:DataPager PageSize="5" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                       <!-- <td>
                            <asp:DynamicControl runat="server" DataField="WeaponId" ID="WeaponId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="WeaponType" ID="WeaponType" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="JobSpecific" ID="JobSpecific" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="AttackRate" ID="AttackRate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MagicAttack" ID="MagicAttack" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Weight" ID="Weight" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Attribute" ID="Attribute" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Enchantment" ID="Enchantment" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MonetaryValue" ID="MonetaryValue" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Rarity" ID="Rarity" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Weapons/Details", Item.WeaponId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Weapons/Edit", Item.WeaponId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Weapons/Delete", Item.WeaponId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

