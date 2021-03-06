﻿<%@ Page Title="ItemEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Items.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Item" DefaultMode="Edit" DataKeyNames="ItemId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Item with ItemId <%: Request.QueryString["ItemId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Item</legend>
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
                    <asp:Label ID="DescriptionLabel" runat="server" Text="Description"></asp:Label>
                    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
                    <div>
                        <asp:Label ID="MonetaryValueLabel" runat="server" Text="Monetary Value"></asp:Label>
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="MonetaryValue" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="Label" runat="server" Text="Weight"></asp:Label>
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="Weight" runat="server" />
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

