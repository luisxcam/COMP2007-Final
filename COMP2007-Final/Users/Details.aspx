<%@ Page Title="User Details" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Details.aspx.cs" Inherits="COMP2007_Final.Users.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.User" DataKeyNames="UsernameId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the User with UsernameId <%: Request.QueryString["UsernameId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>User Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UsernameId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UsernameId" ID="UsernameId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Username</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Username" ID="Username" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FirstName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FirstName" ID="FirstName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>LastName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="LastName" ID="LastName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Password</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Password" ID="Password" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Email</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

