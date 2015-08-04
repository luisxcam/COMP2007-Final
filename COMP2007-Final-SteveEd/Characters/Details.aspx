<%@ Page Title="Character Details" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Details.aspx.cs" Inherits="COMP2007_Final_SteveEd.Characters.Details" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div id="character_display">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final_SteveEd.Models.Character" DataKeyNames="CharacterId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Character with CharacterId <%: Request.QueryString["CharacterId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <div class="row ">
                        <div id="char-name">
                            <h1>
                                <asp:DynamicControl runat="server" DataField="CharacterName" ID="CharacterName" Mode="ReadOnly" />
                            </h1>
                            <i class="fa fa-mars-stroke"></i>
                        </div>
                        <div class="col-md-3">
                            <asp:Image ID="img" CssClass="img" runat="server" ImageUrl="../Content/images/archer.jpg" />
                        </div>
                        <div class="col-md-4">
                            <div>
                                <label>Weapon:</label>

                                <span><%#: Item.Weapon != null ? Item.Weapon.Name : "" %></span>
                            </div>
                            <div>
                                <label>Armour</label>
                                <%#: Item.Armour != null ? Item.Armour.Name : "" %>
                            </div>
                            <div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <label>CharClass</label>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <label>CharLevel</label>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <label>Gender</label>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="Gender" ID="Gender" Mode="ReadOnly" />
                                </div>
                            </div>
                            <div>
                                <label>HP</label>
                                <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <label>Mana</label>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <label>Strength</label>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
                                </div>
                            </div>
                            <div class="row">
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
                        </div>
                        <%#: Item.User != null ? Item.User.Username : "" %>
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

