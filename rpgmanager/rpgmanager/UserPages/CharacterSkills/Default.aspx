<%@ Page Title="CharacterSkillList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSkills.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>CharacterSkills List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CharacterSkillsId"
                ItemType="rpgmanager.Models.CharacterSkill"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for CharacterSkills
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table table-hover table-responsive" id="styledTable">
                        <thead>
                            <tr>
                                <!--<th>
								<asp:LinkButton Text="CharacterSkillsId" CommandName="Sort" CommandArgument="CharacterSkillsId" runat="Server" />
							</th>-->
                                <th>
                                    <asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="SkillId" CommandName="Sort" CommandArgument="SkillId" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="CharacterSkillsId" ID="CharacterSkillsId" Mode="ReadOnly" />
							</td>-->
                        <td>
                            <%#: Item.Character != null ? Item.Character.CharacterName : "" %>
                        </td>
                        <td>
                            <%#: Item.Skill != null ? Item.Skill.Name : "" %>
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterSkills/Details", Item.CharacterSkillsId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterSkills/Edit", Item.CharacterSkillsId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/CharacterSkills/Delete", Item.CharacterSkillsId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

