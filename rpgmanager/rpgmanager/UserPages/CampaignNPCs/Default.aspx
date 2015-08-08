<%@ Page Title="CampaignNPCList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.CampaignNPCs.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>CampaignNPCs List</h2>
        <p class="btn btn-default">
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CampaignNPCId"
                ItemType="rpgmanager.Models.CampaignNPC"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for CampaignNPCs
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table table-responsive" id="styledTable">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="CampaignNPCId" CommandName="Sort" CommandArgument="CampaignNPCId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="CampaignId" CommandName="Sort" CommandArgument="CampaignId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="NPCId" CommandName="Sort" CommandArgument="NPCId" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="CampaignNPCId" ID="CampaignNPCId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <%#: Item.Campaign != null ? Item.Campaign.Title : "" %>
                        </td>
                        <td>
                            <%#: Item.NPC != null ? Item.NPC.Name : "" %>
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignNPCs/Details", Item.CampaignNPCId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignNPCs/Edit", Item.CampaignNPCId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CampaignNPCs/Delete", Item.CampaignNPCId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

