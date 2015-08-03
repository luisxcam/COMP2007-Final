<%@ Page Title="SkillInsert" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Insert.aspx.cs" Inherits="COMP2007_Final.Skills.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Skill" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert Skill</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
                    <!--<asp:DynamicControl Mode="Insert" DataField="CharClass" runat="server" />-->
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
                    <asp:DynamicControl Mode="Insert" DataField="Rate" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Efficiency" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="UsesPerDay" runat="server" />
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
