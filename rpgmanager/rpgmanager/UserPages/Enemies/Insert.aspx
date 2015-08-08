<%@ Page Title="EnemyInsert" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Enemies.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Enemy" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Enemy</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharLevel" runat="server" />
						    <!--<asp:DynamicControl Mode="Edit" DataField="Race" runat="server" />-->
                            <div>
                                <asp:Label ID="RaceLabel" runat="server" Text="Race"></asp:Label>
                                <asp:DropDownList ID="RaceDropDownList" runat="server" SelectedValue="<%# BindItem.Race %>">
                                    <asp:ListItem Value="Human"></asp:ListItem>
                                    <asp:ListItem Value="Elf"></asp:ListItem>
                                    <asp:ListItem Value="Dwarf"></asp:ListItem>
                                    <asp:ListItem Value="Gnome"></asp:ListItem>
                                    <asp:ListItem Value="Half-Orc"></asp:ListItem>
                                    <asp:ListItem Value="Halfling"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
						    <!--<asp:DynamicControl Mode="Edit" DataField="CharClass" runat="server" />-->
                            <div>
                                <asp:Label ID="CharClassLabel" runat="server" Text="CharClass"></asp:Label>
                                <asp:DropDownList ID="CharClassDropDownList" runat="server" SelectedValue="<%# BindItem.CharClass %>">
                                    <asp:ListItem Value="Warrior"></asp:ListItem>
                                    <asp:ListItem Value="Archer"></asp:ListItem>
                                    <asp:ListItem Value="Monk"></asp:ListItem>
                                    <asp:ListItem Value="White Mage"></asp:ListItem>
                                    <asp:ListItem Value="Black Mage"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
						    <asp:DynamicControl Mode="Insert" DataField="HP" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Mana" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ArmourRate" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="WeaponDamage" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MagicAttack" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MagicDefense" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Speed" runat="server" />
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
