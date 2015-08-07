﻿<%@ Page Title="CampaignEnemyList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.CampaignEnemies.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
        <h2>CampaignEnemies List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CampaignEnemyId"
                ItemType="rpgmanager.Models.CampaignEnemy"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for CampaignEnemies
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table table-responsive" id="styledTable">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="CampaignEnemyId" CommandName="Sort" CommandArgument="CampaignEnemyId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CampaignId" CommandName="Sort" CommandArgument="CampaignId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="EnemyId" CommandName="Sort" CommandArgument="EnemyId" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="CampaignEnemyId" ID="CampaignEnemyId" Mode="ReadOnly" />
                        </td>
                        <td>
                            <%#: Item.Campaign != null ? Item.Campaign.Title : "" %>
                        </td>
                        <td>
                            <%#: Item.Enemy != null ? Item.Enemy.Name : "" %>
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignEnemies/Details", Item.CampaignEnemyId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignEnemies/Edit", Item.CampaignEnemyId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignEnemies/Delete", Item.CampaignEnemyId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

