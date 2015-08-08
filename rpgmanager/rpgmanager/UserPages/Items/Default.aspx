<%@ Page Title="ItemList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.Items.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Items List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="ItemId"
                ItemType="rpgmanager.Models.Item"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Items
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table id="styledTable" class="table table-responsive">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="ItemId" CommandName="Sort" CommandArgument="ItemId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="MonetaryValue" CommandName="Sort" CommandArgument="MonetaryValue" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Weight" CommandName="Sort" CommandArgument="Weight" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="ItemId" ID="ItemId" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="MonetaryValue" ID="MonetaryValue" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Weight" ID="Weight" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Items/Details", Item.ItemId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Items/Edit", Item.ItemId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Items/Delete", Item.ItemId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

