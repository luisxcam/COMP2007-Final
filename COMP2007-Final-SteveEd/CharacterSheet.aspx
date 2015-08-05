<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CharacterSheet.aspx.cs" Inherits="COMP2007_Final_SteveEd.CharacterSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="characterSheet" class="dashboard_container">
        <asp:FormView runat="server"
            ItemType="COMP2007_Final_SteveEd.Models.Character" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal"> 
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="UsernameId" 
								DataTypeName="COMP2007_Final_SteveEd.Models.User" 
								DataTextField="Username" 
								DataValueField="UsernameId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="WeaponId" 
								DataTypeName="COMP2007_Final_SteveEd.Models.Weapon" 
								DataTextField="Name" 
								DataValueField="WeaponId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="ArmourId" 
								DataTypeName="COMP2007_Final_SteveEd.Models.Armour" 
								DataTextField="Name" 
								DataValueField="ArmourId" 
								UIHint="ForeignKey" runat="server" />
                    <h1>Character Creation Sheet</h1>
                    <div id="characterDetails" class="row">
                        <div class="col-md-8 col-md-push-4">
                            <div>
                                <label>Name</label>
                                <asp:DynamicControl UIHint="customData" Mode="Insert" DataField="CharacterName" runat="server" />
                            </div>

                            <div>
                                <asp:Label runat="server" AssociatedControlID="GenderDropDownList" class="dropdownlist">Gender</asp:Label><asp:DropDownList CssClass="form-control gender-control" ID="GenderDropDownList" runat="server">
                                    <asp:ListItem Text="Male" Value="Male" Selected="True" />
                                    <asp:ListItem Text="Female" Value="Female" />
                                    <asp:ListItem Text="Trans" Value="Trans" />
                                    <asp:ListItem Text="Other" Value="Other" />
                                </asp:DropDownList>
                            </div>

                            <div>
                                <asp:Label runat="server" AssociatedControlID="ClassDropDownList" class="dropdownlist">Class</asp:Label>
                                <asp:DropDownList CssClass="form-control class-control" ID="ClassDropDownList" runat="server">
                                    <asp:ListItem Text="Warrior" Value="Warrior" Selected="True" />
                                    <asp:ListItem Text="Archer" Value="Archer" />
                                    <asp:ListItem Text="Mage" Value="Mage" />
                                    <asp:ListItem Text="Cleric" Value="Cleric" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <!-- /.col-md-8-->
                        <div class="col-md-4  col-md-pull-8">
                            <img src="Content/images/archer.jpg" />
                        </div>
                    </div>
                    <!-- /#characterDetails row -->
                    <div id="stats" class="row">
                        <div class="col-md-4">
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="StrengthTextbox">STR <span style="font-size:x-small">(STRENGTH)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="StrengthTextbox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="StrengthModifierTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="DexterityTextbox">DEX <span style="font-size:x-small">(DETERITY)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="DexterityTextbox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="DexterityModifierTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="ConstitutionTextbox">CON <span style="font-size:x-small">(CONSTITTION)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="ConstitutionTextBox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="ConstitutionModifierTextBox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="IntelligenceTextbox">INT <span style="font-size:x-small">(INTELLIGENCE)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="IntelligenceTextbox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="IntelligenceModifierTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="WisdomTextbox">WIS <span style="font-size:x-small">(WISDOM)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="WisdomTextbox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="WisdomModifierTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="CharismaTextbox">CHA <span style="font-size:x-small">(CHARISMA)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="CharismaTextbox" />
                                <asp:TextBox CssClass="modifierBox" runat="server" ID="CharismaModifierTextbox" />
                            </div>
                        </div>
                        <!-- / col-4-->
                        <div class="col-md-8">
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="HPTextbox">HP <span style="font-size:x-small">(HIT POINTS)</span></asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="HPTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="SpeedTextbox">SPEED</asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="SpeedTextbox" />
                            </div>
                            <div class="alignedLabel">
                                <asp:Label runat="server" AssociatedControlID="carryWeightTextbox">MAX CARRY WEIGHT</asp:Label>
                                <asp:TextBox CssClass="statBox" runat="server" ID="carryWeightTextbox" />
                            </div>
                        </div>
                    </div>
                    <!--row-->
                    <asp:DynamicControl Mode="Insert" DataField="CharClass" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CharLevel" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Gender" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="HP" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Mana" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Strength" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Dexterity" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Constitution" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Intelligence" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Wisdom" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Charisma" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SkillPoints" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="StatPoints" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Speed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Gold" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Experience" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CarryWeight" runat="server" />
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
    <!-- /#characterSheet -->
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

