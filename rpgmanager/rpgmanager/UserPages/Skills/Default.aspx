<%@ Page Title="SkillList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.Skills.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Skills List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="SkillId"
                ItemType="rpgmanager.Models.Skill"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Skills
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table id="styledTable" class="table table-responsive">
                        <thead>
                            <tr>
                                <!--<th>
                                    <asp:LinkButton Text="SkillId" CommandName="Sort" CommandArgument="SkillId" runat="Server" />
                                </th>-->
                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Class" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Rate" CommandName="Sort" CommandArgument="Rate" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Efficiency" CommandName="Sort" CommandArgument="Efficiency" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Uses-Per-Day" CommandName="Sort" CommandArgument="UsesPerDay" runat="Server" />
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
                            <asp:DynamicControl runat="server" DataField="SkillId" ID="SkillId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Rate" ID="Rate" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Efficiency" ID="Efficiency" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="UsesPerDay" ID="UsesPerDay" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Skills/Details", Item.SkillId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Skills/Edit", Item.SkillId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Skills/Delete", Item.SkillId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

