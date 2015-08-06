﻿<%@ Page Title="CampaignList" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.Campaigns.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
        <h2>Campaigns List</h2>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CampaignId"
                ItemType="rpgmanager.Models.Campaign"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Campaigns
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table" id="styledTable">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="CampaignId" CommandName="Sort" CommandArgument="CampaignId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="UsernameId" CommandName="Sort" CommandArgument="UsernameId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Title" CommandName="Sort" CommandArgument="Title" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CreationDate" CommandName="Sort" CommandArgument="CreationDate" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="NextSessionDate" CommandName="Sort" CommandArgument="NextSessionDate" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="CampaignId" ID="CampaignId" Mode="ReadOnly" />
                        </td>
                        <td>
                            <%#: Item.User != null ? Item.User.Username : "" %>
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Title" ID="Title" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CreationDate" ID="CreationDate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="NextSessionDate" ID="NextSessionDate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Campaigns/Details", Item.CampaignId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Campaigns/Edit", Item.CampaignId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Campaigns/Delete", Item.CampaignId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

