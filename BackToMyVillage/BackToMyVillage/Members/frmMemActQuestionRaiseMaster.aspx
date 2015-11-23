<%@ Page Language="C#" MasterPageFile="~/Members/MembersMasterPage.master" AutoEventWireup="true" CodeFile="frmMemActQuestionRaiseMaster.aspx.cs" Inherits="Members_frmMemActQuestionRaiseMaster" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
        .style1
        {
            font-size: large;
            background-color: #E1FFFF;
        }
        .tableData
        {
            text-align: left;
            font-weight: bold;
            font-size: x-large;
            background-color: #E1FFFF;
           
        }
        .style5
        {
            text-align: left;
            font-weight: bold;
            font-size: smaller;
            width: 132px;
            height: 20px;
            color: White;
            background-color: #E1FFFF;
        }
        .style6
        {
            width: 132px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
            <center style="height: auto">
            <asp:Panel ID="mainPanel" runat="server">
                <br />
                <br />
                <span class="style1">Raise Your Question On Activities here..
                <br />
                </span>
                <br />
                <table class="tableData" style="border: 2px solid #003000; width: 345px; height: 185px; background-color: #E1FFFF;"
                    cellpadding="1" cellspacing="1" bgcolor="#E1FFFF">
                    <tr>
                        <td class="style5" valign="top" bgcolor="#E1FFFF">
                            Activity Name</td>
                        <td class="tableData" bgcolor="#E1FFFF">
                            <asp:DropDownList ID="ddlActivityName" runat="server" Height="16px" 
                                Width="200px" BackColor="#E1FFFF">
                            </asp:DropDownList>
                        </td>
                        <td> <asp:RequiredFieldValidator ControlToValidate="ddlActivityName" 
                                InitialValue="--Select One--" ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*" Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top" bgcolor="#E1FFFF">
                            </td>
                        <td class="tableData" style="background-color: #E1FFFF">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="style5" valign="top" bgcolor="#E1FFFF">
                            Village Name</td>
                        <td class="tableData" bgcolor="#E1FFFF" >
                            <asp:DropDownList ID="ddlVillage" runat="server" Height="16px" Width="200px" 
                                BackColor="#E1FFFF">
                            </asp:DropDownList>
                        </td>
                        <td bgcolor="#E1FFFF"><asp:RequiredFieldValidator ControlToValidate="ddlVillage" 
                                InitialValue="--Select One--" ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*" Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                           
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top" bgcolor="#E1FFFF">
                            &nbsp;</td>
                        <td class="tableData" bgcolor="#E1FFFF" style="background-color: #E1FFFF">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top" bgcolor="#E1FFFF" 
                            style="background-color: #E1FFFF">
                            Question Description</td>
                        <td class="tableData" valign="top" bgcolor="#E1FFFF">
                            <asp:TextBox ID="txtDesc" runat="server" Height="130px" TextMode="MultiLine" 
                                Width="200px" BackColor="#E1FFFF"></asp:TextBox>
                        </td>
                        <td valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtDesc" ErrorMessage="*" Font-Bold="True" 
                                ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" bgcolor="#E1FFFF">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" bgcolor="#E1FFFF">
                            &nbsp;&nbsp;&nbsp; * are mandatory
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" style="text-align: right" bgcolor="#E1FFFF">
                            <asp:Button ID="btnSubmit" runat="server" Height="26px" 
                                OnClick="btnSubmit_Click" Text="Submit" Width="69px" />
                        </td>
                        <td style="text-align: right" bgcolor="#E1FFFF">
                            <asp:Button ID="btnClear" runat="server" CausesValidation="false" Height="25px" 
                                OnClick="btnClear_Click" Text="Clear" Width="70px" />
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
               
                <br />
                <asp:Label ID="lblMsg" runat="server" ForeColor="#FF3000"></asp:Label>
                </asp:Panel>
            </center>
             <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div id="Progress" runat="server" style="background-color: Gray; font-weight: bold; font-family: Verdana; font-size: medium;width:300px;height:auto;vertical-align:middle">
                        <center>
                            Processing......<br />
                            <img src="../Images/Process.gif" height="100px" width="100px" />
                        </center>
                        </div>
                        <cc1:AlwaysVisibleControlExtender TargetControlID="Progress"  HorizontalSide="Center" VerticalSide="Middle" ID="AlwaysVisibleControlExtender1" runat="server">
                        </cc1:AlwaysVisibleControlExtender>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>

