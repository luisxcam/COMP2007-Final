﻿<%@ Control Language="C#" CodeBehind="ForeignKey_Edit.ascx.cs" Inherits="COMP2007_Final_SteveEd.ForeignKey_EditField" %>


		<asp:DropDownList 
			ID="DropDownList1"
			SelectMethod="GetData"
			DataTextField="<%#DataTextField%>"
			DataValueField="<%#DataValueField%>"
			SelectedValue="<%#FieldValueString%>"
			CssClass="form-control"
            AppendDataBoundItems="true"
			Runat="server">
                <asp:ListItem Text="Select An Option" Value=""></asp:ListItem>
            </asp:DropDownList>


