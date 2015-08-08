<%@ Page Title="SkillEdit" Language="C#" MasterPageFile="~/MasterPages/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="rpgmanager.UserPages.Skills.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container panel">
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Skill" DefaultMode="Edit" DataKeyNames="SkillId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Skill with SkillId <%: Request.QueryString["SkillId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Skill</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
                    <asp:Label ID="DescriptionLabel" runat="server" Text="Description"></asp:Label>
                    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
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
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="Rate" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="EfficiencyLabel" runat="server" Text="Efficiency"></asp:Label>
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="Efficiency" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="UsesPerDayLabel" runat="server" Text="Uses Per Day"></asp:Label>
                        <asp:DynamicControl Mode="Edit" CssClass="form-control" DataField="UsesPerDay" runat="server" />
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

