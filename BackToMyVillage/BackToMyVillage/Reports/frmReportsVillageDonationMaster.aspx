<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="frmReportsVillageDonationMaster.aspx.cs" Inherits="Reports_frmReportsVillagedetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
<tr>
<td class="tableHeading">Activities Conduct In there </td>
</tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" RowStyle-CssClass="GridItemalign" PagerStyle-CssClass="GridItemalign" DataSourceID="SqlDataSource1" HeaderStyle-CssClass="GridHeaderalign" >
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BackToMyVillageConnectionString %>" 
        SelectCommand="Sp_ReportsVillageDonationMasteDetalis" 
        SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</td>
</tr>
<tr>
<td></td>
</tr>
</table>
</center>
</asp:Content>

