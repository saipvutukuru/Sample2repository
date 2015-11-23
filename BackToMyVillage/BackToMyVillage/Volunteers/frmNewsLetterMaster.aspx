<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="frmNewsLetterMaster.aspx.cs" Inherits="Volunteers_frmNewsLetterMaster" Title="Untitled Page" %>

<%@ Register Src="~/UnormalPagesUserControls/UCDocument.ascx" TagName="FileUpload" TagPrefix="UC1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table >
<tr>
        <td >News Letter Master Data</td>
        
        </tr>
         <tr>
        <td colspan="3" >&nbsp;</td>
        
        </tr>
         <tr>
        <td colspan="3" >&nbsp;</td>
        
        </tr>
        <tr>
        <td >
            Subject
        </td>
        <td>
        <asp:TextBox ID="txtNewsLetterSubjectName" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="regnewslettersubjectname" 
                ControlToValidate="txtNewsLetterSubjectName" runat="server" ErrorMessage="*" 
                Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator> 
        </td>
        
        </tr>
        <tr>
        <td  style="font-size: small">
        &nbsp;Document Files
        </td>
        <td>
        <UC1:FileUpload ID="FileUpload1" runat="server" />
        </td>
        </tr>
        <tr>
        <td  style="font-size: small">
        &nbsp;Status
        </td>
        <td>
        
        <asp:RadioButtonList ID="radNewsLetterStatus" runat="server" 
                RepeatDirection="Horizontal" ForeColor="Black">
        <asp:ListItem Value="1">Yes</asp:ListItem>
      <asp:ListItem Value="0">No</asp:ListItem>
        </asp:RadioButtonList>
        
        </td>
        </tr>
        <tr>
        <td  style="font-size: small">Volunteer Name</td>
        <td>
        <asp:DropDownList ID="ddlVolunteerid" runat="server"></asp:DropDownList>
        </td>
        </tr>
              <tr>
        <td colspan="3" >&nbsp;</td>
        
        </tr>
             <tr>
        <td colspan="3" >
        
        </td>
        
        </tr>
        <tr>
        <td colspan="3">
        
        <center>
        <asp:Button ID="btnAdd" runat="server" Text="Submit" style="font-weight: 700" 
                onclick="btnAdd_Click" />
     
      
     
        
               <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                style="font-weight: 700" onclick="btncancel_Click" /></center>
        </td>
        </tr>
          </table> 
          <br />
          <asp:Label ID="lblError" runat="server" ForeColor="Black"></asp:Label>
          </center>
          
</asp:Content>

