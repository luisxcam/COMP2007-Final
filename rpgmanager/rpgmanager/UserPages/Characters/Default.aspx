<%@ Page Title="CharacterList" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Default.aspx.cs" Inherits="rpgmanager.Characters.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <h2>Characters List</h2>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CharacterId"
                ItemType="rpgmanager.Models.Character"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Characters
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div class="table-responsive">
                        <table class="table table-hover table-responsive" id="styledTable">
                            <thead>
                                <tr>
                                    <!--<th>
                                    <asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
                                </th>-->
                                    <th>
                                        <asp:LinkButton Text="Username" CommandName="Sort" CommandArgument="UsernameId" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Weapon" CommandName="Sort" CommandArgument="WeaponId" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Armour" CommandName="Sort" CommandArgument="ArmourId" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="CharacterName" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Class" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Level" CommandName="Sort" CommandArgument="CharLevel" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Gender" CommandName="Sort" CommandArgument="Gender" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="HP" CommandName="Sort" CommandArgument="HP" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Mana" CommandName="Sort" CommandArgument="Mana" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Strength" CommandName="Sort" CommandArgument="Strength" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Dexterity" CommandName="Sort" CommandArgument="Dexterity" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Constitution" CommandName="Sort" CommandArgument="Constitution" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Intelligence" CommandName="Sort" CommandArgument="Intelligence" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Wisdom" CommandName="Sort" CommandArgument="Wisdom" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Charisma" CommandName="Sort" CommandArgument="Charisma" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Skill Points" CommandName="Sort" CommandArgument="SkillPoints" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Stat Points" CommandName="Sort" CommandArgument="StatPoints" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Speed" CommandName="Sort" CommandArgument="Speed" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Gold" CommandName="Sort" CommandArgument="Gold" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Experience" CommandName="Sort" CommandArgument="Experience" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Carry Weight" CommandName="Sort" CommandArgument="CarryWeight" runat="Server" />
                                    </th>
                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr runat="server" id="itemPlaceholder" />
                            </tbody>
                        </table>
                    </div>
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
                            <asp:DynamicControl runat="server" DataField="CharacterId" ID="CharacterId" Mode="ReadOnly" />
                        </td>-->
                        <td>
                            <%#: Item.User != null ? Item.User.Username : "" %>
                        </td>
                        <td>
                            <%#: Item.Weapon != null ? Item.Weapon.Name : "" %>
                        </td>
                        <td>
                            <%#: Item.Armour != null ? Item.Armour.Name : "" %>
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharacterName" ID="CharacterName" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Gender" ID="Gender" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Dexterity" ID="Dexterity" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Constitution" ID="Constitution" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Intelligence" ID="Intelligence" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Wisdom" ID="Wisdom" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Charisma" ID="Charisma" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="SkillPoints" ID="SkillPoints" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="StatPoints" ID="StatPoints" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Gold" ID="Gold" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Experience" ID="Experience" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="CarryWeight" ID="CarryWeight" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Characters/Details", Item.CharacterId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Characters/Edit", Item.CharacterId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/UserPages/Characters/Delete", Item.CharacterId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

