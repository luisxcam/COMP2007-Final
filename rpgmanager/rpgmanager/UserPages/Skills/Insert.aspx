<%@ Page Title="SkillInsert" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="rpgmanager.UserPages.Skills.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Skill" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert Skill</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <asp:Label ID="DescriptionLabel" runat="server" Text="Description"></asp:Label>
                    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
                    <div>
                        <asp:Label ID="CharClassLabel" runat="server" Text="Class"></asp:Label>
                        <asp:DropDownList ID="CharClassDropDownList" CssClass="form-control" runat="server" SelectedValue="<%# BindItem.CharClass %>">
                            <asp:ListItem Value="Warrior"></asp:ListItem>
                            <asp:ListItem Value="Archer"></asp:ListItem>
                            <asp:ListItem Value="Monk"></asp:ListItem>
                            <asp:ListItem Value="White Mage"></asp:ListItem>
                            <asp:ListItem Value="Black Mage"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="RateLabel" runat="server" Text="Rate"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="Rate" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="EfficiencyLabel" runat="server" Text="Efficiency"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="Efficiency" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="UsesPerDayLabel" runat="server" Text="Uses Per Day"></asp:Label>
                        <asp:DynamicControl Mode="Insert" CssClass="form-control" DataField="UsesPerDay" runat="server" />
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
