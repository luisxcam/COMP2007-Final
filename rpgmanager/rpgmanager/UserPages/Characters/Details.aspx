<%@ Page Title="Character Details" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Details.aspx.cs" Inherits="rpgmanager.Characters.Details" AutoEventWireup="True" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
    <div id="character_display">
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
                    <div class="row ">
                        <div id="char-name">
                            <h1>
                                <asp:DynamicControl runat="server" DataField="CharacterName" ID="CharacterName" Mode="ReadOnly" />
                            </h1>
                        </div>
                        <div class="col-md-3">
                            <asp:Image ID="img" CssClass="img" runat="server" ImageUrl="../Content/images/archer.jpg" />
                        </div>
                        <div class="col-md-4">
                            <div>
                                <label>CharClass</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
                                </span>
                            </div>
                            <div>
                                <label>CharLevel</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
                                </span>
                            </div>
                            
                            <div>
                                <label>Experience</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="Experience" ID="Experience" Mode="ReadOnly" />
                                </span>
                            </div>
                                                        <div>
                                <label>SkillPoints</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="SkillPoints" ID="SkillPoints" Mode="ReadOnly" />
                                </span>
                            </div>
                            <div>
                                <label>StatPoints</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="StatPoints" ID="StatPoints" Mode="ReadOnly" />
                                </span>
                            </div>
                            <div>
                                <i class="fa fa-money"></i>
                                <label>Gold</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="Gold" ID="Gold" Mode="ReadOnly" />
                                </span>
                            </div>
                            <div>
                                <i class="fa fa-scissors"></i>
                                    <label>Weapon</label>
                                    <span><%#: Item.Weapon != null ? Item.Weapon.Name : "none" %></span>
                            </div>
                            <div>
                                <i class="fa fa-shield"></i>
                                    <label>Armour</label>
                                    <span><%#: Item.Armour != null ? Item.Armour.Name : "none" %></span>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div>
                                <i class="fa fa-heart"></i>
                                    <label>HP</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-magic"></i>
                                    <label>Mana</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-diamond"></i>
                                <label>Strength</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
                                </span>
                            </div>
                            <div>
                                <i class="fa fa-leaf"></i>
                                    <label>Dexterity</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Dexterity" ID="Dexterity" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-link"></i>
                                    <label>Constitution</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Constitution" ID="Constitution" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-book"></i>
                                    <label>Intelligence</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Intelligence" ID="Intelligence" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-graduation-cap"></i>
                                    <label>Wisdom</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Wisdom" ID="Wisdom" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-eye"></i>
                                    <label>Charisma</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Charisma" ID="Charisma" Mode="ReadOnly" />
                                    </span>
                            </div>

                            <div>
                                <i class="fa fa-bolt"></i>
                                    <label>Speed</label>
                                    <span>
                                        <asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
                                    </span>
                            </div>
                            <div>
                                <i class="fa fa-briefcase"></i>
                                <label>CarryWeight</label>
                                <span>
                                    <asp:DynamicControl runat="server" DataField="CarryWeight" ID="CarryWeight" Mode="ReadOnly" />
                                </span>
                            </div>
                         <%//#: Item.User != null ? Item.User.Username : "" %>
                            
                        </div><!-- /col-md-5-->
                    </div><!-- /.row -->
                    <div >
                                <div class="text-left">
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
                                </div>
                            </div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
        </div><!-- /.dashboard_container -->
</asp:Content>

