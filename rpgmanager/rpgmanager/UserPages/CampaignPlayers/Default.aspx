<%@ Page Title="CampaignPlayerList" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.CampaignPlayers.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>CampaignPlayers List</h2>
        <p class="btn btn-default">
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CampaignPlayerId"
                ItemType="rpgmanager.Models.CampaignPlayer"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for CampaignPlayers
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table table-responsive" id="styledTable">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="CampaignPlayerId" CommandName="Sort" CommandArgument="CampaignPlayerId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CampaignId" CommandName="Sort" CommandArgument="CampaignId" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="CampaignPlayerId" ID="CampaignPlayerId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <%#: Item.Character != null ? Item.Character.CharacterName : "" %>
                        </td>
                        <td>
                            <%#: Item.Campaign != null ? Item.Campaign.Title : "" %>
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignPlayers/Details", Item.CampaignPlayerId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignPlayers/Edit", Item.CampaignPlayerId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignPlayers/Delete", Item.CampaignPlayerId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

