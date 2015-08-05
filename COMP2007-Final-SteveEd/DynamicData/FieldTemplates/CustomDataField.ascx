<%@ Control Language="C#" CodeBehind="CustomDataField.ascx.cs" Inherits="COMP2007_Final_SteveEd.Text_EditField" %>

<div id="Div1" runat="server" class="form-group">
    <asp:Label ID="Label2" runat="server" CssClass="col-sm-2 control-label" />
    <div class="col-sm-3">
		<asp:TextBox ID="TextBox2" type="Text" runat="server" Text='<%# FieldValueEditString %>' CssClass="form-control DDTextBox"></asp:TextBox>
    </div>
</div>
