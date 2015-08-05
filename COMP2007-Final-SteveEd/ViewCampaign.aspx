﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ViewCampaign.aspx.cs" Inherits="COMP2007_Final_SteveEd.ViewCampaign" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard_container">
        <div class="panel">
            <asp:FormView runat="server"
                ItemType="COMP2007_Final_SteveEd.Models.Campaign" DataKeyNames="CampaignId"
                SelectMethod="GetItemCampaign"
                OnItemCommand="ItemCommand" RenderOuterTable="false">
                <EmptyDataTemplate>
                    Cannot find the Campaign with CampaignId <%: Request.QueryString["CampaignId"] %>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div>
                        <h1>
                            <asp:DynamicControl runat="server" DataField="Title" ID="Title" Mode="ReadOnly" />
                        </h1>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div id="campaignform_description">
                                <asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <label>Created</label>

                                <asp:DynamicControl runat="server" DataField="CreationDate" ID="CreationDate" Mode="ReadOnly" />
                            </div>
                            <div>
                                <label>NextSessionDate</label>
                                <asp:DynamicControl runat="server" DataField="NextSessionDate" ID="NextSessionDate" Mode="ReadOnly" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <div><a href="#" id="charactersFormToggle">Characters<i class="fa fa-plus-square"></i></a></div>
        <div id="charactersForm">
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CharacterId"
                ItemType="COMP2007_Final_SteveEd.Models.Character"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Characters
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div class="table-responsive">
                    <table id="default_char" class="table table-hover table-responsive">
                        <thead class="verticalLabel">
                            <tr>
                                <th>
                                    <asp:LinkButton Text="Character" CommandName="Sort" CommandArgument="CharacterName" runat="Server" />
                                </th>
                                                                <th>
                                    <asp:LinkButton Text="Class" CommandName="Sort" CommandArgument="CharClass" runat="Server" />
                                </th>
                                                                <th>
                                    <asp:LinkButton Text="Gender" CommandName="Sort" CommandArgument="Gender" runat="Server" />
                                </th>
                                                                <th>
                                    <asp:LinkButton Text="Level" CommandName="Sort" CommandArgument="CharLevel" runat="Server" />
                                </th>
                                                                <th>
                                    <asp:LinkButton Text="Experience" CommandName="Sort" CommandArgument="Experience" runat="Server" />
                                </th>
                                                                <th>
                                    <asp:LinkButton Text="Gold" CommandName="Sort" CommandArgument="Gold" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Weapon" CommandName="Sort" CommandArgument="WeaponId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Armour" CommandName="Sort" CommandArgument="ArmourId" runat="Server" />
                                </th>

                                <th>
                                    <asp:LinkButton Text="HitPoints" CommandName="Sort" CommandArgument="HP" runat="Server" />
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
                                    <asp:LinkButton Text="Speed" CommandName="Sort" CommandArgument="Speed" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="CarryWeight" CommandName="Sort" CommandArgument="CarryWeight" runat="Server" />
                                </th>
                                  <th>
                                    <asp:LinkButton Text="Skill Points" CommandName="Sort" CommandArgument="SkillPoints" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Stat Points" CommandName="Sort" CommandArgument="StatPoints" runat="Server" />
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
                        <td  data-label="Char:">
                            <asp:DynamicControl runat="server" DataField="CharacterName" ID="CharacterName" Mode="ReadOnly" />
                        </td>                     
                        <td data-label="Class:">
                            <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                        </td>
                                                <td data-label="Gender:">
                            <asp:DynamicControl runat="server" DataField="Gender" ID="Gender" Mode="ReadOnly" />
                        </td>
                                                <td data-label="Level:">
                            <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                        </td>
                                                <td data-label="Exp:">
                            <asp:DynamicControl runat="server" DataField="Experience" ID="Experience" Mode="ReadOnly" />
                        </td>
                                                <td data-label="Gold:">
                            <asp:DynamicControl runat="server" DataField="Gold" ID="Gold" Mode="ReadOnly" />
                        </td>
                        <td data-label="Weapon:">
                            <%#: Item.Weapon != null ? Item.Weapon.Name : "none" %>
                        </td>
                        <td data-label="Armour:">
                            <%#: Item.Armour != null ? Item.Armour.Name : "none" %>
                        </td>

                        <td data-label="Hp:">
                            <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                        </td>
                        <td data-label="Mana:">
                            <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                        </td>
                        <td data-label="Str:">
                            <asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
                        </td>
                        <td data-label="Dex:">
                            <asp:DynamicControl runat="server" DataField="Dexterity" ID="Dexterity" Mode="ReadOnly" />
                        </td>
                        <td data-label="Const:">
                            <asp:DynamicControl runat="server" DataField="Constitution" ID="Constitution" Mode="ReadOnly" />
                        </td>
                        <td data-label="Int:">
                            <asp:DynamicControl runat="server" DataField="Intelligence" ID="Intelligence" Mode="ReadOnly" />
                        </td>
                        <td data-label="Wis:">
                            <asp:DynamicControl runat="server" DataField="Wisdom" ID="Wisdom" Mode="ReadOnly" />
                        </td>
                        <td data-label="Cha:">
                            <asp:DynamicControl runat="server" DataField="Charisma" ID="Charisma" Mode="ReadOnly" />
                        </td>
                        <td data-label="Speed:">
                            <asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
                        </td>
                        <td data-label="CarryWt:">
                            <asp:DynamicControl runat="server" DataField="CarryWeight" ID="CarryWeight" Mode="ReadOnly" />
                        </td>
                                                <td data-label="SkillP:">
                            <asp:DynamicControl runat="server" DataField="SkillPoints" ID="SkillPoints" Mode="ReadOnly" />
                        </td>
                        <td data-label="StatP:">
                            <asp:DynamicControl runat="server" DataField="StatPoints" ID="StatPoints" Mode="ReadOnly" />
                        </td>
                        <td id="crud_function_td">
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Details", Item.CharacterId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Edit", Item.CharacterId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Characters/Delete", Item.CharacterId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
