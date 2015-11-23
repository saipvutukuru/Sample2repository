<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true"
    CodeFile="frmVillageDonationMaster.aspx.cs" Inherits="Admin_frmVillageDonationMaster"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:ScriptManager  ID="scrmgr" runat ="server" ></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    
    <ContentTemplate >
    
    <center style="color: #000000">
    <br />
    <br />
    <br />
        <table style="width: 73%; background-color: #C0C0C0;" class="tableData">
        <tr>
        <td colspan="3" class="tableHeading">Village Donation Information</td>
        
        </tr>
        
        
        <tr>
        <td colspan="3" class="tableHeading">&nbsp;</td>
        
        </tr>
        
        
        <tr>
        <td colspan="3" class="style7"></td>
        
        </tr>
        
        

               <tr>
                <td class="style5">
                    
                                Activity Name</td>
                            <td>
                           <asp:DropDownList ID="ddlactivityid" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="ddlactivityid_SelectedIndexChanged" Height="19px" 
                                    Width="130px">
                                </asp:DropDownList></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                ControlToValidate="ddlactivityid"  ErrorMessage="*" runat="server" 
                                ForeColor="White"></asp:RequiredFieldValidator>
                          
                </td>
            </tr>
            
            <tr>
                <td class="style5">
                  
                                Village Name</td>
                            <td>
                                <asp:DropDownList ID="ddlvillageid" runat="server" AutoPostBack="True" 
                                    Height="16px" Width="130px">
                                </asp:DropDownList>
                </td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                ControlToValidate="ddlvillageid"  ErrorMessage="*" runat="server" 
                                ForeColor="White"></asp:RequiredFieldValidator>
                                           </td>
            </tr>
             
                        <tr>
                            <td class="style5">
                                Amount Expected
                            </td>
                            <td>
                            <asp:TextBox ID="TxtDonationamountexcepted" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                    ControlToValidate="TxtDonationamountexcepted"  ErrorMessage="*" runat="server" 
                                    ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RagDonationamountexpeted" runat="server" MinimumValue="10" 
                                    MaximumValue="1000000" ControlToValidate="TxtDonationamountexcepted" 
                                    Type="Integer" ErrorMessage="(10 Above)" ForeColor="White"></asp:RangeValidator>
                           
                </td>
            </tr>
                    
                <tr>
                            <td class="style5">
                                Description
                            </td>
                            <td>
                            <asp:TextBox ID="TxtDonationDescription" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                    ControlToValidate="TxtDonationDescription"  ErrorMessage="*" runat="server" 
                                    ForeColor="White"></asp:RequiredFieldValidator>
                            
                           
                </td>
            </tr>
            <tr>
                            <td class="style5">
                                &nbsp;Acquired Members Count
                            </td>
                            <td>
                            <asp:TextBox ID="TxtDonationAcquiredMembersCount" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                    ControlToValidate="TxtDonationAcquiredMembersCount"  ErrorMessage="*" 
                                    runat="server" ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" MinimumValue="10" 
                                    MaximumValue="1000000" ControlToValidate="TxtDonationAcquiredMembersCount" 
                                    Type="Integer" ErrorMessage="(10 Above)" ForeColor="White"></asp:RangeValidator>
                           
                </td>
            </tr>
               <tr>
                            <td class="style5">
                                Minimum Amount Accepted
                            </td>
                            <td>
                            <asp:TextBox ID="TxtDonationMinimumAmountAccepted" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                                    ControlToValidate="TxtDonationMinimumAmountAccepted"  ErrorMessage="*" 
                                    runat="server" ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" MinimumValue="10" 
                                    MaximumValue="1000000" ControlToValidate="TxtDonationMinimumAmountAccepted" 
                                    Type="Integer" ErrorMessage="(10 Above)" ForeColor="White"></asp:RangeValidator>
                           
                </td>
            </tr>
             <tr>
        <td colspan="3" class="tableHeading">&nbsp;</td>
        
        </tr>
             <tr>
        <td colspan="3" class="style6">
        
            (* are mandetory)</td>
        
        </tr>
        <tr>
        <td colspan="3">
        
        <center>
        <asp:Button ID="btnAdd" runat="server" Text="Submit" style="font-weight: 700" 
                onclick="btnAdd_Click" />
     
        
               &nbsp;&nbsp;
     
        
               <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                style="font-weight: 700" onclick="btncancel_Click" /></center>
        </td>
        </tr>
        </table>
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
