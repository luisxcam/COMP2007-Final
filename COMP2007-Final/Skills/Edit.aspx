<%@ Page Title="SkillEdit" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="COMP2007_Final.Skills.Edit" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Skill" DefaultMode="Edit" DataKeyNames="SkillId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Skill with SkillId <%: Request.QueryString["SkillId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Skill</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
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
                    <asp:DynamicControl Mode="Edit" DataField="Rate" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="Efficiency" runat="server" />
                    <asp:DynamicControl Mode="Edit" DataField="UsesPerDay" runat="server" />
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

