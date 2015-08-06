<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="CharacterSheet.aspx.cs" Inherits="rpgmanager.UserPages.CharacterSheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div  class="dashboard_container">
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Character" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
   
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <h1>Character Creation Sheet</h1>
                    <div id="characterSheet">
                    <div id="characterDetails" class="row">
                        <div class="col-md-8 col-md-push-4">
                            <div>
                                <label>Name</label>
                                <asp:DynamicControl Mode="Insert" DataField="CharacterName" runat="server" />
                            </div>

                            <div>
                                <label>Username</label>
                            <asp:DynamicControl Mode="Insert" 
								DataField="UsernameId" 
								DataTypeName="rpgmanager.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
                                </div>

                            <div class="form-group">
                                <label>Gender</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue="<%# BindItem.Gender %>">
                                    <asp:ListItem Text="Male" Value="M" Selected="True" />
                                    <asp:ListItem Text="Female" Value="F" />
                                    <asp:ListItem Text="Trans" Value="T" />
                                    <asp:ListItem Text="Other" Value="O" />
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label>Class</label>
                                <asp:DropDownList ID="CharClassDropDownList" runat="server" CssClass=" form-control" SelectedValue="<%# BindItem.CharClass %>">
                                    <asp:ListItem Value="Warrior"></asp:ListItem>
                                    <asp:ListItem Value="Archer"></asp:ListItem>
                                    <asp:ListItem Value="Monk"></asp:ListItem>
                                    <asp:ListItem Value="White Mage"></asp:ListItem>
                                    <asp:ListItem Value="Black Mage"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <label>Weapon</label>
                            <asp:DynamicControl Mode="Insert" 
								DataField="WeaponId" 
								DataTypeName="rpgmanager.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
                                </div>
                            <div>
                                <label>Armour</label>
							<asp:DynamicControl Mode="Insert" 
								DataField="ArmourId" 
								DataTypeName="rpgmanager.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
                                </div>
                        </div>
                        <!-- /.col-md-8-->
                        <div class="col-md-4  col-md-pull-8">
                            <img src="http://res.cloudinary.com/dffqiamzz/image/upload/v1438866077/archer_zk5z9s.jpg" />
                        </div>
                    </div>
                    <!-- /#characterDetails row -->
                    <div id="stats" class="row">
                        <div id="attributes" class="col-md-5">
                            <div class="alignedLabel">
                                <label class="alignedLabel">STR <span style="font-size:x-small">(STRENGTH)</span></label>
                                 <asp:DynamicControl  Mode ="Insert" DataField="Strength" runat="server" />
                            </div>
                            <div class="alignedLabel">
                                <label>DEX <span style="font-size:x-small">(DETERITY)</span></Label>
                                	    <asp:DynamicControl Mode="Insert" DataField="Dexterity" runat="server" />
                               
                            </div>
                            <div class="alignedLabel">
                                <label>CON <span style="font-size:x-small">(CONSTITTION)</span></label>
                                   <asp:DynamicControl Mode="Insert" DataField="Constitution" runat="server" />
                    
                            </div>
                            <div class="alignedLabel">
                                <label>INT <span style="font-size:x-small">(INTELLIGENCE)</span></label>
                                  <asp:DynamicControl Mode="Insert" DataField="Intelligence" runat="server" />
                         
                            </div>
                            <div class="alignedLabel">
                                <label>WIS <span style="font-size:x-small">(WISDOM)</span></label>
                               <asp:DynamicControl Mode="Insert" DataField="Wisdom" runat="server" />
                      </div>
                            <div class="alignedLabel">
                                <label>CHA <span style="font-size:x-small">(CHARISMA)</span></label>
                                <asp:DynamicControl Mode="Insert" DataField="Charisma" runat="server" />
                        
                        </div>
                    </div>
                    <!-- / col-4-->
                        <div id="attributes" class="col-md-7">
                            <div class="alignedLabel">
                                <label>HP <span style="font-size:x-small">(HIT POINTS)</span></label>
                                <asp:DynamicControl Mode="Insert" DataField="HP" runat="server" />
                            </div>
                             <div class="alignedLabel">
                                <label>Mana</label>
                                <asp:DynamicControl Mode="Insert" DataField="Mana" runat="server" />
                            </div>
                            <div class="alignedLabel">
                                <label>SPEED</label>
                                <asp:DynamicControl Mode="Insert" DataField="Speed" runat="server" />
                            </div>
                            <div class="alignedLabel">
                                <label>MAX CARRY WEIGHT</Label>
                                <asp:DynamicControl Mode="Insert" DataField="CarryWeight" runat="server" />
                            </div>
                        </div>
                    </div>
                    <!--row-->
            </div>
                    <div class="button-div-scaffold">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                    </div>
                    <!-- /#characterSheet -->

            </InsertItemTemplate>
        </asp:FormView>
    </div>

</asp:Content>
