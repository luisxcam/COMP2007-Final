<%@ Page Title="ArmourInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Armours.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Armour" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert Armour</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="ArmourType" runat="server" />-->
                    <div>
                        <asp:Label ID="ArmourTypeLabel" runat="server" Text="Armour Type"></asp:Label>
                        <asp:DropDownList ID="ArmourTypeDropDownList" CssClass="form-control" runat="server" SelectedValue="<%# BindItem.ArmourType %>">
                            <asp:ListItem Value="Cloth"></asp:ListItem>
                            <asp:ListItem Value="Leather"></asp:ListItem>
                            <asp:ListItem Value="Chainmail"></asp:ListItem>
                            <asp:ListItem Value="Platemail"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--<asp:DynamicControl Mode="Insert" DataField="JobSpecific" runat="server" />-->
                    <div>
                        <asp:Label ID="JobSpecificLabel" runat="server" Text="Job Specific"></asp:Label>
                        <asp:DropDownList ID="JobSpecificDropDownList" CssClass="form-control" runat="server" SelectedValue="<%# BindItem.JobSpecific %>">
                            <asp:ListItem Value="None"></asp:ListItem>
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="DefenseRateLabel" runat="server" Text="Defense Rate"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="DefenseRate" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="MagicDefenceLabel" runat="server" Text="Magic Defence"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="MagicDefense" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="WeightLabel" runat="server" Text="Weight"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="Weight" runat="server" />
                    </div>
                    <!--<asp:DynamicControl Mode="Insert" DataField="Attribute" runat="server" />-->
                    <div>
                        <asp:Label ID="AttributeLabel" runat="server" Text="Attribute"></asp:Label>
                        <asp:DropDownList ID="AttributeDropDownList" CssClass="form-control" runat="server" SelectedValue="<%# BindItem.Attribute %>">
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
                    <asp:Label ID="EnchantmentLabel" runat="server" Text="Enchantment"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Enchantment" runat="server" />
                    <div>
                        <asp:Label ID="MonetaryValueLabel" runat="server" Text="Monetary Value"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="MonetaryValue" runat="server" />
                    </div>
                    <!--<asp:DynamicControl Mode="Insert" DataField="Rarity" runat="server" />-->
                    <div>
                        <asp:Label ID="RarityLabel" runat="server" Text="Rarity"></asp:Label>
                        <asp:DropDownList ID="RarityDropDownList" CssClass="form-control" runat="server" SelectedValue="<%# BindItem.Rarity %>">
                            <asp:ListItem Value="Common"></asp:ListItem>
                            <asp:ListItem Value="Uncommon"></asp:ListItem>
                            <asp:ListItem Value="Rare"></asp:ListItem>
                            <asp:ListItem Value="Legendary"></asp:ListItem>
                        </asp:DropDownList>
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
