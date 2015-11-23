<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Volunteers_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id="tbl" width="100%">
<tr align ="center">
<td>
<span style="font-size: xx-large">Welcome To  <%=Session["UserName"].ToString().ToUpper() %></span>
</td>
</tr>

</table>

    

</asp:Content>

