<%@ Page Language="C#" MasterPageFile="~/Members/MembersMasterPage.master"  AutoEventWireup="true" CodeFile="frmVillageDonationDetails.aspx.cs" Inherits="frmVillageDonationDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" >
.tableData
{text-align:left;vertical-align:bottom;font-weight:bold;font-family:Verdana;font-size:9px;	
 background-color: #E1FFFF;
 }
.tableHeading
{	text-align:center;vertical-align:bottom;font-weight:bold;font-family:Verdana;font-size:16px;}
.style2
{   height: 25px;      }
.style5
{
	background-color : #E1FFFF;
	text-align:left;
	vertical-align:bottom;
	font-weight:bold;
	font-family:Verdana;font-size:9px;
	vertical-align:top;                
    width: 173px;height: 20px; color: Black ;
   
 }
.style6
{text-align: center;vertical-align: bottom;font-family: Verdana;font-size: 16px;color: Black;        }
    .style7
    {
        text-align: left;
        vertical-align: bottom;
        font-weight: bold;
        font-family: Verdana;
        font-size: 9px;
        vertical-align: top;
        width: 173px;
        height: 26px;
        color: Black;
    }
    .style8
    {
        height: 26px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    
    <center>
        
      
    <table bgcolor="#E1FFFF" style="width: 432px">
         <tr>
        <td colspan="3" class="style6" bgcolor="#E1FFFF">Village Donation Details </td>
        
        </tr>
         <tr>
        <td colspan="3" class="tableHeading" bgcolor="#E1FFFF">&nbsp;</td>
        
        </tr>
         <tr>
        <td colspan="3" class="tableHeading" bgcolor="#E1FFFF">&nbsp;</td>
        
        </tr>
        <tr>
             <td class="style5"; bgcolor="#E1FFFF" >
             Donation ID
             </td>
        <td>
        <asp:DropDownList ID="ddlDonationID" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlDonationID_SelectedIndexChanged" Height="74px" 
                Width="125px"></asp:DropDownList>
        </td>
   <td></td>
        </tr>
        <tr>
        <td class="style5" bgcolor="#E1FFFF">
        Activity Name
        
        </td>
        <td>
        <asp:TextBox ID="TxtActivityId" runat="server" ReadOnly="true" Height="27px"></asp:TextBox>
        </td>
        <td></td>
        </tr>
        <tr>
        <td class="style5" bgcolor="#E1FFFF">
       Village Name
        
        </td>
        <td>
           <asp:TextBox ID="TxtVillageId" runat="server" ReadOnly="true"></asp:TextBox>
        </td><td></td>
        </tr>
          <tr>
                            <td class="style5" bgcolor="#E1FFFF">
                               Donation Amount Expected
                            </td>
                            <td class="style8">
                            <asp:TextBox ID="TxtDonationAmountExpected" ReadOnly="true" runat="server"></asp:TextBox></td>
                            <td class="style8">
                           
                            
                           
                </td>
            </tr>
           <tr>
                            <td class="style5" bgcolor="#E1FFFF">
                               Donation Amount Collected till Now
                            </td>
                            <td class="style2">
                            <asp:TextBox ID="TxtAmountCollectedtillNow" ReadOnly="true" runat="server"></asp:TextBox></td>
                            <td class="style2">
                        
                            
                           
                </td>
            </tr>
             <tr>
                            <td class="style5" bgcolor="#E1FFFF">
                               Donation  Minimum Amount Accepted                            </td>
                            <td>
                            <asp:TextBox ID="TxtMinimumAmountAccepted" ReadOnly="true" runat="server"></asp:TextBox></td><td>
                          
                            
                           
                </td>
            </tr>  
        <tr>
                            <td class="style5" bgcolor="#E1FFFF">
                               Amount Donated
                            </td>
                            <td >
                            <asp:TextBox ID="TxtAmountDonated" runat="server"></asp:TextBox></td>
                            <td style="text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                    ControlToValidate="TxtAmountDonated"  ErrorMessage="*" runat="server" 
                                    ForeColor="Black"></asp:RequiredFieldValidator>
                           
                </td>
            </tr>
         <tr>
                            <td class="style5" bgcolor="#E1FFFF">
                                Remarks For Donation
                            </td>
                            <td>
                            <asp:TextBox ID="TxtremarksForDonation" runat="server" Height="85px" 
                                    TextMode="MultiLine" Width="131px">
                                    </asp:TextBox></td><td valign="top" align="left" >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                    ControlToValidate="TxtremarksForDonation"  ErrorMessage="*" runat="server" 
                                    ForeColor="Black"></asp:RequiredFieldValidator>
                            
                           
                </td>
            </tr>
     
         <tr>
        <td class="style5" bgcolor="#E1FFFF">
   PaymentType ID
        
        </td>
        <td>
        <asp:DropDownList ID="ddlPaymenttypeid" runat="server" Height="23px" Width="125px"></asp:DropDownList>
        </td><td></td>
        </tr>
          <tr>
        <td class="style5" bgcolor="#E1FFFF">
            Introduced Volunteer 
        
        </td>
        <td>
        <asp:DropDownList ID="ddlIntroducedVolunteerid" runat="server" Height="23px" 
                Width="126px"></asp:DropDownList>
        </td><td></td>
        </tr>
          <tr>
        <td colspan="3" class="tableHeading" bgcolor="#E1FFFF">
       
        </td>
        
        </tr>
        <tr>
        <td colspan="3" bgcolor="#E1FFFF">
        
        <center>
        <asp:Button ID="btnAdd" runat="server" Text="Submit" style="font-weight: 700" 
                onclick="btnAdd_Click" />
     
        
               &nbsp;&nbsp;
     
        
               <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                style="font-weight: 700" onclick="btncancel_Click" 
                CausesValidation="False" /></center>
        </td>
        </tr>
    </table> 
    <br />
     <asp:Label ID="lblError" runat="server"></asp:Label>
</center>
</ContentTemplate>
    </asp:UpdatePanel> 
</asp:Content>

