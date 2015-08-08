<%@ Page Title="ArmourList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.Armours.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Armours List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="ArmourId"
                ItemType="rpgmanager.Models.Armour"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Armours
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table id="styledTable" class="table table-responsive">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="ArmourId" CommandName="Sort" CommandArgument="ArmourId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Type" CommandName="Sort" CommandArgument="ArmourType" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Job Specific" CommandName="Sort" CommandArgument="JobSpecific" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Defense Rate" CommandName="Sort" CommandArgument="DefenseRate" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Magic Defense" CommandName="Sort" CommandArgument="MagicDefense" runat="Server" />
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
                                    <asp:LinkButton Text="Value" CommandName="Sort" CommandArgument="MonetaryValue" runat="Server" />
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
                        <!--<td>
                            <asp:DynamicControl runat="server" DataField="ArmourId" ID="ArmourId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="ArmourType" ID="ArmourType" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="JobSpecific" ID="JobSpecific" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="DefenseRate" ID="DefenseRate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MagicDefense" ID="MagicDefense" Mode="ReadOnly" />
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
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Armours/Details", Item.ArmourId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Armours/Edit", Item.ArmourId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Armours/Delete", Item.ArmourId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

