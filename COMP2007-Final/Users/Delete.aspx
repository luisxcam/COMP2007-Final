<%@ Page Title="UserDelete" Language="C#" MasterPageFile="~/Master Pages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="COMP2007_Final.Users.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this User?</h3>
        <asp:FormView runat="server"
            ItemType="COMP2007_Final.Models.User" DataKeyNames="UsernameId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the User with UsernameId <%: Request.QueryString["UsernameId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete User</legend>
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
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

