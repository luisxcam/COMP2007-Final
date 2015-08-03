<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ViewCharacters.aspx.cs" Inherits="COMP2007_Final_SteveEd.ViewCharacters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
        <EmptyDataTemplate>
            Cannot find the Table with Id <%: Request.QueryString["Id"] %>
        </EmptyDataTemplate>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <asp:PlaceHolder ID="CharacterIndicatorsPlaceHolder" runat="server"></asp:PlaceHolder>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <asp:FormView runat="server"
        ItemType="COMP2007_Final_SteveEd.Models.Table" DataKeyNames="Id"
        SelectMethod="GetItem"
        OnItemCommand="ItemCommand" RenderOuterTable="false" ID="formvieww">

                        <ItemTemplate>      

                            <asp:PlaceHolder ID="CharacterSlidesPlaceholder" runat="server"></asp:PlaceHolder>
                            </ItemTemplate>
  
                            </asp:FormView>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

</asp:Content>
