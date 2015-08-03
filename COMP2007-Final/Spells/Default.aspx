<%@ Page Title="SpellList" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Final.Spells.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Spells List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="SpellsId" 
			ItemType="COMP2007_Final.Models.Spell"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Spells
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="SpellsId" CommandName="Sort" CommandArgument="SpellsId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CharClass" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Attribute" CommandName="Sort" CommandArgument="Attribute" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Rate" CommandName="Sort" CommandArgument="Rate" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Efficiency" CommandName="Sort" CommandArgument="Efficiency" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ManaRequired" CommandName="Sort" CommandArgument="ManaRequired" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ChantingTime" CommandName="Sort" CommandArgument="ChantingTime" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="SpellsId" ID="SpellsId" Mode="ReadOnly" />
							</td>
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
								<asp:DynamicControl runat="server" DataField="Attribute" ID="Attribute" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Rate" ID="Rate" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Efficiency" ID="Efficiency" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="ManaRequired" ID="ManaRequired" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="ChantingTime" ID="ChantingTime" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Spells/Details", Item.SpellsId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Spells/Edit", Item.SpellsId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Spells/Delete", Item.SpellsId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

