<%@ Page Title="ArmourEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Armours.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Armour" DefaultMode="Edit" DataKeyNames="ArmourId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Armour with ArmourId <%: Request.QueryString["ArmourId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Armour</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
                    <!--<asp:DynamicControl Mode="Edit" DataField="ArmourType" runat="server" />-->
                    <div>
                        <asp:Label ID="ArmourTypeLabel" runat="server" Text="ArmourType"></asp:Label>
                        <asp:DropDownList ID="ArmourTypeDropDownList" runat="server" SelectedValue="<%# BindItem.ArmourType %>">
                            <asp:ListItem Value="Cloth"></asp:ListItem>
                            <asp:ListItem Value="Leather"></asp:ListItem>
                            <asp:ListItem Value="Chainmail"></asp:ListItem>
                            <asp:ListItem Value="Platemail"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Edit" DataField="JobSpecific" runat="server" />-->
                    <div>
                        <asp:Label ID="JobSpecificLabel" runat="server" Text="JobSpecific"></asp:Label>
                        <asp:DropDownList ID="JobSpecificDropDownList" runat="server" SelectedValue="<%# BindItem.JobSpecific %>">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <label>Defence Rate</label>
                    <asp:DynamicControl Mode="Edit" DataField="DefenseRate" runat="server" />
                    <label>Magic Defence</label>
                    <asp:DynamicControl Mode="Edit" DataField="MagicDefense" runat="server" />
                    <label>Weight</label>
                    <asp:DynamicControl Mode="Edit" DataField="Weight" runat="server" />
                    <!--<asp:DynamicControl Mode="Edit" DataField="Attribute" runat="server" />-->
                    <div>
                        <asp:Label ID="AttributeLabel" runat="server" Text="Attribute"></asp:Label>
                        <asp:DropDownList ID="AttributeDropDownList" runat="server" SelectedValue="<%# BindItem.Attribute %>">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Air"></asp:ListItem>
                            <asp:ListItem Value="Earth"></asp:ListItem>
                            <asp:ListItem Value="Water"></asp:ListItem>
                            <asp:ListItem Value="Fire"></asp:ListItem>
                            <asp:ListItem Value="Lightning"></asp:ListItem>
                            <asp:ListItem Value="Light"></asp:ListItem>
                            <asp:ListItem Value="Dark"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <label>Enchantment</label>
                    <asp:DynamicControl Mode="Edit" DataField="Enchantment" runat="server" />
                    <label>Monetary Value</label>
                    <asp:DynamicControl Mode="Edit" DataField="MonetaryValue" runat="server" />
                    <!--<asp:DynamicControl Mode="Edit" DataField="Rarity" runat="server" />-->
                    <div>
                        <asp:Label ID="RarityLabel" runat="server" Text="Rarity"></asp:Label>
                        <asp:DropDownList ID="RarityDropDownList" runat="server" SelectedValue="<%# BindItem.Rarity %>">
                            <asp:ListItem Value="Common"></asp:ListItem>
                            <asp:ListItem Value="Uncommon"></asp:ListItem>
                            <asp:ListItem Value="Rare"></asp:ListItem>
                            <asp:ListItem Value="Legendary"></asp:ListItem>
                        </asp:DropDownList>
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

