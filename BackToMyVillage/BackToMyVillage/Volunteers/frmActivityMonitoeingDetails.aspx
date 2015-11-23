<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityMonitoeingDetails.aspx.cs" Inherits="Volunteers_frmActivityMonitoeingDetails" Title="Untitled Page" %>

<%@ Register Src="~/UnormalPagesUserControls/UCActivityMonitoeingDetails.ascx" TagName="FileUpload" TagPrefix="UC1" %>
<%@ Register Src="~/UnormalPagesUserControls/UCActivityVideofile.ascx" TagName="FileUpload1" TagPrefix="Uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<center>
<table >
<tr>
        <td colspan="3" class="tableHeading" >Activity Monitoring Details Data</td>
        
        </tr>
         <tr>
        <td colspan="3" class="tableHeading">&nbsp;</td>
        
        </tr>
         <tr>
        <td colspan="3" class="tableHeading">&nbsp;</td>
        
        </tr>
          <tr>
             <td >
        Activity Monitor ID
             </td>
        <td style="text-align: left">
        <asp:DropDownList ID="ddlMonitorID" runat="server" 
                Height="19px" Width="220px" DataTextField="ActivityMonitorId" DataValueField="ActivityMonitorId" ></asp:DropDownList>
        </td>
   
        </tr>
          <tr>
             <td class="style1">
        &nbsp;Image File
             </td>
        <td style="text-align: left">
       <UC1:FileUpload ID="ImageFile1" runat="server" />
        </td>
   
        </tr>
        <tr>
        <td class="style1">
        
            Description</td> <td><asp:TextBox id="TxtImageDescription" runat="server" TextMode="MultiLine" 
                Height="153px" Width="375px"></asp:TextBox>
        </td>
        
        </tr>
        <tr>
        <td class="style1">
        &nbsp;Video File
        </td>
        <td style="text-align: left">
        <Uc2:FileUpload1 ID="Videofile" runat="server" />
        </td>
        </tr>
        <tr>
        <td colspan="3" class="tableHeading">&nbsp;</td>
        
        </tr>
             <tr>
        <td colspan="3" class="tableHeading">
        
        </td>
        
        </tr>
        <tr>
        <td colspan="3">
        
        <center>
        <asp:Button ID="btnAdd" runat="server" Text="Submit" style="font-weight: 700" 
                onclick="btnAdd_Click" />
     
        
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        
               <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                style="font-weight: 700" onclick="btncancel_Click" /></center>
        </td>
        </tr>
</table>
<br />
<asp:Label ID="LblError" runat="server" ForeColor="Black"></asp:Label>
</center>
</asp:Content>

