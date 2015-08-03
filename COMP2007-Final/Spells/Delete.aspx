﻿<%@ Page Title="SpellDelete" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="COMP2007_Final.Spells.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Spell?</h3>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.Spell" DataKeyNames="SpellsId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Spell with SpellsId <%: Request.QueryString["SpellsId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Spell</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SpellsId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="SpellsId" ID="SpellsId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Name</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Description</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CharClass</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CharClass" ID="CharClass" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Attribute</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Attribute" ID="Attribute" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Rate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Rate" ID="Rate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Efficiency</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Efficiency" ID="Efficiency" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ManaRequired</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ManaRequired" ID="ManaRequired" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ChantingTime</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ChantingTime" ID="ChantingTime" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

