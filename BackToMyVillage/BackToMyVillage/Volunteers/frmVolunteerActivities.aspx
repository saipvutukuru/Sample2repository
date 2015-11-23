<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="frmVolunteerActivities.aspx.cs" Inherits="Volunteers_frmVolunteerActivities" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br />
<br />
<br />
    <center>
        <table >
            <tr>
                <td colspan="3" >
                    Volunteer Case Study On Activities</td>
            </tr>
            <tr>
                <td colspan="3" >
                    
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td >
                    Volunteer Name
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlvolunteerID" runat="server"  Height="16px" 
                        Width="160px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                   Activity Conducted Date
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TxtActivityconduceddate" runat="server" Height="21px" 
                        Width="160px"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalenderExtender1" TargetControlID="TxtActivityconduceddate" runat="server"></cc1:CalendarExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TxtActivityconduceddate"
                        ErrorMessage="*" runat="server" Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style5">
                    Village Name
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlvillageId" runat="server"  Height="19px" Width="160px">
                    </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td >
                    Case Study Name
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlCasestudyId" runat="server"  Height="19px" 
                        Width="160px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;Description
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TxtcasestudyDescription" runat="server" Height="71px" 
                        Width="160px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtcasestudyDescription"
                        ErrorMessage="*" runat="server" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td >
                    &nbsp;Out Come
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TxtCasestudyOutCome" runat="server" Height="72px" 
                        Width="160px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtCasestudyOutCome"
                        ErrorMessage="*" runat="server" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center style="background-color: #C0C0C0">
                        <asp:Button ID="btnAdd" runat="server" Text="Submit" Style="font-weight: 700" OnClick="btnAdd_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" Style="font-weight: 700"
                            OnClick="btncancel_Click" CausesValidation="False" /></center>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="Black"></asp:Label>
    </center>
</asp:Content>

