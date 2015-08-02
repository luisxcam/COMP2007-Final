<%@ Page Title="CharacterItemList" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Final.CharacterItems.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>CharacterItems List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="CharacterId" 
			ItemType="COMP2007_Final.Models.CharacterItem"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for CharacterItems
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="CharacterItemId" CommandName="Sort" CommandArgument="CharacterItemId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CharacterId" CommandName="Sort" CommandArgument="CharacterId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ItemId" CommandName="Sort" CommandArgument="ItemId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Quantity" CommandName="Sort" CommandArgument="Quantity" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="CharacterItemId" ID="CharacterItemId" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Character != null ? Item.Character.CharacterName : "" %>
							</td>
							<td>
								<%#: Item.Item != null ? Item.Item.Name : "" %>
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Quantity" ID="Quantity" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CharacterItems/Details", Item.CharacterId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CharactersItems/Edit", Item.CharacterId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CharactersItems/Delete", Item.CharacterId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>