﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CharacterSheet.aspx.cs" Inherits="COMP2007_Final_SteveEd.CharacterSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div  class="dashboard_container">
        <asp:FormView runat="server"
            ItemType="COMP2007_Final_SteveEd.Models.Character" DefaultMode="Insert"
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
                                <label>Gender</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" SelectedValue="<%# BindItem.Gender %>">
                                    <asp:ListItem Text="Male" Value="Male" Selected="True" />
                                    <asp:ListItem Text="Female" Value="Female" />
                                    <asp:ListItem Text="Trans" Value="Trans" />
                                    <asp:ListItem Text="Other" Value="Other" />
                                </asp:DropDownList>
                            </div>

                            <div>
                                <label>Class</label>
                                <asp:DropDownList ID="CharClassDropDownList" runat="server" CssClass="dropdown" SelectedValue="<%# BindItem.CharClass %>">
                                    <asp:ListItem Value="Warrior"></asp:ListItem>
                                    <asp:ListItem Value="Archer"></asp:ListItem>
                                    <asp:ListItem Value="Monk"></asp:ListItem>
                                    <asp:ListItem Value="White Mage"></asp:ListItem>
                                    <asp:ListItem Value="Black Mage"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <!-- /.col-md-8-->
                        <div class="col-md-4  col-md-pull-8">
                            <img src="Content/images/archer.jpg" />
                        </div>
                    </div>
                    <!-- /#characterDetails row -->
                    <div class="row">
                        <div id="attributes" class="col-md-5">
                            <div >
                                <label class="alignedLabel">STR <span style="font-size:x-small">(STRENGTH)</span></label>
                                 <asp:DynamicControl  UIHint="Text" Mode ="Insert" DataField="Strength" runat="server" />
                            </div>
                            <div>
                                <label>DEX <span style="font-size:x-small">(DETERITY)</span></Label>
                                	    <asp:DynamicControl Mode="Insert" DataField="Dexterity" runat="server" />
                               
                            </div>
                            <div>
                                <label>CON <span style="font-size:x-small">(CONSTITTION)</span></label>
                                   <asp:DynamicControl Mode="Insert" DataField="Constitution" runat="server" />
                    
                            </div>
                            <div>
                                <label>INT <span style="font-size:x-small">(INTELLIGENCE)</span></label>
                                  <asp:DynamicControl Mode="Insert" DataField="Intelligence" runat="server" />
                         
                            </div>
                            <div>
                                <label>WIS <span style="font-size:x-small">(WISDOM)</span></label>
                               <asp:DynamicControl Mode="Insert" DataField="Wisdom" runat="server" />
                      </div>
                            <div>
                                <label>CHA <span style="font-size:x-small">(CHARISMA)</span></label>
                                <asp:DynamicControl Mode="Insert" DataField="Charisma" runat="server" />
                        
                        </div>
                    </div>
                    <!-- / col-4-->
                        <div id="stats" class="col-md-7">
                            <div>
                                <label>HP <span style="font-size:x-small">(HIT POINTS)</span></label>
                                <asp:DynamicControl Mode="Insert" DataField="HP" runat="server" />
                            </div>
                             <div>
                                <label>Mana</label>
                                <asp:DynamicControl Mode="Insert" DataField="Mana" runat="server" />
                            </div>
                            <div>
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
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                    <!-- /#characterSheet -->

            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

