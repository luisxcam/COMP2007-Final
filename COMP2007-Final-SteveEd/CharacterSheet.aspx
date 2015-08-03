<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CharacterSheet.aspx.cs" Inherits="COMP2007_Final_SteveEd.CharacterSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="characterSheet">
        <h1>Character Creation Sheet</h1>
        <div id="characterDetails" class="row">
            <div class="col-md-8 col-md-push-4">
                <div>
                    <asp:Label runat="server" AssociatedControlID="CharacterNameTextbox">Name</asp:Label>
                    <asp:TextBox runat="server" ID="CharacterNameTextbox" />
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

    </div>
    <!-- /#characterSheet -->




</asp:Content>

