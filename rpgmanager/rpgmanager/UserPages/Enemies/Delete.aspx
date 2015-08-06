<%@ Page Title="EnemyDelete" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Delete.aspx.cs" Inherits="rpgmanager.UserPages.Enemies.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="dashboard_container">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Enemy?</h3>
        <asp:FormView runat="server"
            ItemType="rpgmanager.Models.Enemy" DataKeyNames="EnemyId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Enemy with EnemyId <%: Request.QueryString["EnemyId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Enemy</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>EnemyId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EnemyId" ID="EnemyId" Mode="ReadOnly" />
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
									<strong>CharLevel</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CharLevel" ID="CharLevel" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Race</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Race" ID="Race" Mode="ReadOnly" />
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
									<strong>HP</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HP" ID="HP" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Mana</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Mana" ID="Mana" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ArmourRate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ArmourRate" ID="ArmourRate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>WeaponDamage</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="WeaponDamage" ID="WeaponDamage" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MagicAttack</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MagicAttack" ID="MagicAttack" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MagicDefense</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MagicDefense" ID="MagicDefense" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Speed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Speed" ID="Speed" Mode="ReadOnly" />
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

