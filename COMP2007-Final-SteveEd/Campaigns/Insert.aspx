﻿<%@ Page Title="CampaignInsert" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="COMP2007_Final_SteveEd.Campaigns.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="SampleDaata.DB_MODELS.Campaign" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Campaign</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="Id" 
								DataTypeName="SampleDaata.DB_MODELS.AspNetUser" 
								DataTextField="Email" 
								DataValueField="Id" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CreationDate" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="NextSessionDate" runat="server" />
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
