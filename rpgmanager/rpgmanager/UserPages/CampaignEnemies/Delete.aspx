﻿<%@ Page Title="CampaignEnemyDelete" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="rpgmanager.UserPages.CampaignEnemies.Delete" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <h3>Are you sure want to delete this CampaignEnemy?</h3>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CampaignEnemy" DataKeyNames="CampaignEnemyId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CampaignEnemy with CampaignEnemyId <%: Request.QueryString["CampaignEnemyId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete CampaignEnemy</legend>
                    <div class="row">
                        <!--<div class="col-sm-2 text-right">
                            <strong>CampaignEnemyId</strong>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="CampaignEnemyId" ID="CampaignEnemyId" Mode="ReadOnly" />
                        </div>-->
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>Campaign</strong>
                        </div>
                        <div class="col-sm-4">
                            <%#: Item.Campaign != null ? Item.Campaign.Title : "no campaign selected" %>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>Enemy</strong>
                        </div>
                        <div class="col-sm-4">
                            <%#: Item.Enemy != null ? Item.Enemy.Name : "no enemey" %>
                        </div>
                    </div>
                    <div class="row">
                        &nbsp;
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

