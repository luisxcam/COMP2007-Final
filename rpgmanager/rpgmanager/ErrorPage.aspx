﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="rpgmanager.ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" width="100%" height="100%">
        <tr>
            <td height="100%" width="100%" align="center">

                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="500" height="300" id="err" align="middle">
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="movie" value="http://www.tinsanity.net/err.swf?err=404&subtext=THE PAGE YOU ARE LOOKING FOR DOES NOT EXIST. SORRY :'(" />
                    <param name="quality" value="high" />
                    <param name="bgcolor" value="#cccccc" />
                    <embed src="http://www.tinsanity.net/err.swf?err=404&subtext=THE PAGE YOU ARE LOOKING FOR DOES NOT EXIST. SORRY :'(" quality="high" bgcolor="#cccccc" width="500" height="300" name="err" align="middle" allowscriptaccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
                </object>

            </td>
        </tr>
    </table>
</asp:Content>
