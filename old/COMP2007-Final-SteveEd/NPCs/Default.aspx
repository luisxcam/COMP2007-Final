﻿<%@ Page Title="NPCList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Final_SteveEd.NPCs.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
     <h2>NPCs List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="NPCId" 
			ItemType="COMP2007_Final_SteveEd.Models.NPC"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for NPCs
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table id="styledTable" class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="NPCId" CommandName="Sort" CommandArgument="NPCId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Role" CommandName="Sort" CommandArgument="Role" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="NPCId" ID="NPCId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Role" ID="Role" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/NPCs/Details", Item.NPCId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/NPCs/Edit", Item.NPCId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/NPCs/Delete", Item.NPCId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
        </div>
</asp:Content>

