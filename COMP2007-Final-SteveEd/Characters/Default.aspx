<%@ Page Title="CharacterList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Final_SteveEd.Characters.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Characters List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="CharacterId" 
			ItemType="SampleDaata.DB_MODELS.Character"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Characters
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="WeaponId" CommandName="Sort" CommandArgument="WeaponId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ArmourId" CommandName="Sort" CommandArgument="ArmourId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CharacterName" CommandName="Sort" CommandArgument="CharacterName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CharClass" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CharLevel" CommandName="Sort" CommandArgument="CharLevel" runat="Server" />
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
								<asp:LinkButton Text="SkillPoints" CommandName="Sort" CommandArgument="SkillPoints" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="StatPoints" CommandName="Sort" CommandArgument="StatPoints" runat="Server" />
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
								<asp:LinkButton Text="CarryWeight" CommandName="Sort" CommandArgument="CarryWeight" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="CharacterId" ID="CharacterId" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.AspNetUser != null ? Item.AspNetUser.Email : "" %>
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
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Details", Item.CharacterId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Edit", Item.CharacterId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Delete", Item.CharacterId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

