<%@ Page Title="EnemyList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.Enemies.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Enemies List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="EnemyId"
                ItemType="rpgmanager.Models.Enemy"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Enemies
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table table-responsive" id="styledTable">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="EnemyId" CommandName="Sort" CommandArgument="EnemyId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CharLevel" CommandName="Sort" CommandArgument="CharLevel" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Race" CommandName="Sort" CommandArgument="Race" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CharClass" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="HP" CommandName="Sort" CommandArgument="HP" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Mana" CommandName="Sort" CommandArgument="Mana" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="ArmourRate" CommandName="Sort" CommandArgument="ArmourRate" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="WeaponDamage" CommandName="Sort" CommandArgument="WeaponDamage" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="MagicAttack" CommandName="Sort" CommandArgument="MagicAttack" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="MagicDefense" CommandName="Sort" CommandArgument="MagicDefense" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Speed" CommandName="Sort" CommandArgument="Speed" runat="Server" />
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
                        <td>
                            <asp:DynamicControl runat="server" DataField="EnemyId" ID="EnemyId" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Race" ID="Race" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="ArmourRate" ID="ArmourRate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="WeaponDamage" ID="WeaponDamage" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MagicAttack" ID="MagicAttack" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MagicDefense" ID="MagicDefense" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Enemies/Details", Item.EnemyId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Enemies/Edit", Item.EnemyId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Enemies/Delete", Item.EnemyId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

