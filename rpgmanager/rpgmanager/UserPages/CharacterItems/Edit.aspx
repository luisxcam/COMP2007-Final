<%@ Page Title="CharacterItemEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.CharacterItems.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.CharacterItem" DefaultMode="Edit" DataKeyNames="CharacterItemId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CharacterItem with CharacterItemId <%: Request.QueryString["CharacterItemId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CharacterItem</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="CharacterLabel" runat="server" Text="Character"></asp:Label>
                    <asp:DynamicControl Mode="Edit"
                        DataField="CharacterId"
                        DataTypeName="rpgmanager.Models.Character"
                        DataTextField="CharacterName"
                        DataValueField="CharacterId"
                        UIHint="ForeignKey" runat="server" />
                    <asp:Label ID="ItemLabel" runat="server" Text="Item"></asp:Label>
                    <asp:DynamicControl Mode="Edit"
                        DataField="ItemId"
                        DataTypeName="rpgmanager.Models.Item"
                        DataTextField="Name"
                        DataValueField="ItemId"
                        UIHint="ForeignKey" runat="server" />
                    <div>
                        <asp:Label ID="QuantityLabel" runat="server" Text="Quantity"></asp:Label>
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="Quantity" runat="server" />
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

