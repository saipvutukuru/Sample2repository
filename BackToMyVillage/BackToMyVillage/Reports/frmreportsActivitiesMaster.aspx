<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="frmreportsActivitiesMaster.aspx.cs" Inherits="Reports_frmreportsActivitiesdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table >
<tr>
<td class="tableHeading">
Activities Conducting We Are there Activities In village
</td>
</tr>

<tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ActivityName" HeaderText="ActivityName" 
                SortExpression="ActivityName" />
            <asp:BoundField DataField="ActivityAbbr" HeaderText="ActivityAbbr" 
                SortExpression="ActivityAbbr" />
            <asp:BoundField DataField="ActivityDesc" HeaderText="ActivityDesc" 
                SortExpression="ActivityDesc" />
        </Columns>
    </asp:GridView></td> </tr><tr><td>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetReportsActivityMasterData" 
        TypeName="DataSet1TableAdapters.tbl_ActivityMaster1TableAdapter">
        <InsertParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="ActivityAbbr" Type="String" />
            <asp:Parameter Name="ActivityDesc" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource></td> </tr></table> 
</center>
</asp:Content>

