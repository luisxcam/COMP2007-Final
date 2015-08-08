<%@ Page Title="ItemInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Items.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Item" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert Item</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <asp:Label ID="DescriptionLabel" runat="server" Text="Description"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
                    <div>
                        <asp:Label ID="MonetaryValueLabel" runat="server" Text="Monetary Value"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="MonetaryValue" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="Label" runat="server" Text="Weight"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="Weight" runat="server" />
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
