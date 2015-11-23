<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true"
    CodeFile="frmVolunteerComposeMails.aspx.cs" Inherits="Volunteers_frmVolunteerComposeMails"
    Title="Untitled Page" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/UserControls/BrowseFile.ascx" TagName="BrowseFile" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="panel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="rdbMembers" EventName="CheckedChanged" />
            <asp:AsyncPostBackTrigger ControlID="rdbVolunteers" EventName="CheckedChanged" />
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            <asp:PostBackTrigger ControlID="BrowseFile1" />
        </Triggers>
        <ContentTemplate>
            <center>
                <br />
                <br />
                <asp:Panel ID="mainPanel" runat="server">
                <table width="80%" >
                    <tr>
                        <td >
                            <br />
                            <center >
                                Compose Emails Master</center>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #000000">
                            <br />
                            <br />
                            <table width="100%" bgcolor="White" >
                                <tr >
                                    <td >
                                        Select Emails :
                                    </td>
                                    <td colspan="2">
                                        Admin&nbsp; :
                                        <asp:RadioButton ID="rdbMembers" GroupName="rb" runat="server" AutoPostBack="True"
                                            OnCheckedChanged="rdbMembers_CheckedChanged" />
                                        &nbsp;&nbsp; Members :
                                        <asp:RadioButton ID="rdbVolunteers" GroupName="rb" runat="server" AutoPostBack="True"
                                            OnCheckedChanged="rdbVolunteers_CheckedChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left" valign="top">
                                        To :
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddlto" runat="server" Width="350px">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ControlToValidate="ddlto" ID="RequiredFieldValidator3"
                                            runat="server" ErrorMessage="*" InitialValue="--Select Emailid--"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left" valign="top">
                                        Subject :
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtsubject" runat="server" Width="350px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ControlToValidate="txtsubject" ID="RequiredFieldValidator2"
                                            runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left" valign="top">
                                        Body&nbsp; :
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtbody" runat="server" Height="120px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ControlToValidate="txtbody" ID="RequiredFieldValidator1"
                                            runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">
                                        &nbsp;
                                    </td>
                                    <td style="text-align: left">
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Attachment File :
                                    </td>
                                    <td style="text-align: left" colspan="2">
                                        <uc1:BrowseFile ID="BrowseFile1" runat="server" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" class="style7" colspan="2">
                                    </td>
                                    <td colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="2">
                                        fields marked with ( * ) are mandetory
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" colspan="2">
                                        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" Style="font-weight: 700" />&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <center>
                                <asp:Label ID="lblMsg" runat="server" ForeColor="Black"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="silver" style="background-color: #C0C0C0">
                            <br />
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                <br />
                <br />
                <center>               
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
                </center>
                <br />
                <br />
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
