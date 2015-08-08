<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="ViewCharacters.aspx.cs" Inherits="rpgmanager.UserPages.ViewCharacters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <p>&nbsp;</p>

        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Character" DataKeyNames="CharacterId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Character with CharacterId <%: Request.QueryString["CharacterId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Character Details</legend>
                    <!--<div>
                        <label>CharacterId</label>
                        <asp:DynamicControl runat="server" DataField="CharacterId" ID="CharacterId" Mode="ReadOnly" />
                    </div>-->
                    <div>
                        <label>UsernameId</label>
                        <%#: Item.User != null ? Item.User.Username : "" %>
                    </div>
                    <div>
                        <label>WeaponId</label>
                        <%#: Item.Weapon != null ? Item.Weapon.Name : "" %>
                    </div>
                    <div>
                        <label>ArmourId</label>
                        <%#: Item.Armour != null ? Item.Armour.Name : "" %>
                    </div>
                    <div>
                        <label>CharacterName</label>
                        <asp:DynamicControl runat="server" DataField="CharacterName" ID="CharacterName" Mode="ReadOnly" />
                    </div>
                    <div>
                        <label>CharClass</label>

                        <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                    </div>
                    <div>
                        <label>CharLevel</label>
                        <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                    </div>
                    <div>

                        <label>Gender</label>
                        <asp:DynamicControl runat="server" DataField="Gender" ID="Gender" Mode="ReadOnly" />
                    </div>
                    <div>
                        <label>HP</label>
                        <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                    </div>
                    <div>
                        <label>Mana</label>
                        <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                    </div>
                    <div>
                        <label>Strength</label>
                        <asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
                    </div>
                    <div>
                        <div class="col-sm-2 text-right">
                            <label>Dexterity</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Dexterity" ID="Dexterity" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Constitution</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Constitution" ID="Constitution" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Intelligence</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Intelligence" ID="Intelligence" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Wisdom</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Wisdom" ID="Wisdom" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Charisma</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Charisma" ID="Charisma" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>SkillPoints</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="SkillPoints" ID="SkillPoints" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>StatPoints</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="StatPoints" ID="StatPoints" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Speed</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Gold</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Gold" ID="Gold" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>Experience</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Experience" ID="Experience" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <label>CarryWeight</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="CarryWeight" ID="CarryWeight" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        &nbsp;
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
