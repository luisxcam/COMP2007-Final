<%@ Page Title="CharacterItemList" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.CharacterItems.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>CharacterItems List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CharacterItemId"
                ItemType="rpgmanager.Models.CharacterItem"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for CharacterItems
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table" id="styledTable">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="CharacterItemId" CommandName="Sort" CommandArgument="CharacterItemId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="ItemId" CommandName="Sort" CommandArgument="ItemId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Quantity" CommandName="Sort" CommandArgument="Quantity" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="CharacterItemId" ID="CharacterItemId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <%#: Item.Character != null ? Item.Character.CharacterName : "" %>
                        </td>
                        <td>
                            <%#: Item.Item != null ? Item.Item.Name : "" %>
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Quantity" ID="Quantity" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterItems/Details", Item.CharacterItemId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterItems/Edit", Item.CharacterItemId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterItems/Delete", Item.CharacterItemId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

