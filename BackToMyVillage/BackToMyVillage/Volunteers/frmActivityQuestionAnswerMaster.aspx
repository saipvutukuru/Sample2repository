<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityQuestionAnswerMaster.aspx.cs" Inherits="Volunteers_frmActivityQuestionAnswerMaster" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/UnormalPagesUserControls/UCFileUpload.ascx" TagName="FileUpload" TagPrefix="Ucc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <Triggers>
         <asp:AsyncPostBackTrigger ControlID="ddlQuestionId" EventName="SelectedIndexChanged" />
         </Triggers>
            <ContentTemplate>
            <center style="height: auto">
            <asp:Panel ID="mainPanel" runat="server">
                <br />
                <br />
                <span >Raise Your Questions On Activities here..
                <br />
                </span>
                <br />
                <table >
                   
                    
                    <tr>
                        <td >
                            Select Question</td>
                        <td  >
                            <asp:DropDownList ID="ddlQuestionId" runat="server" Height="25px" Width="200px" 
                                onselectedindexchanged="ddlQuestionId_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td> <asp:RequiredFieldValidator ControlToValidate="ddlQuestionId" 
                                InitialValue="--Select One--" ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                    
                   
                    <tr>
                        <td >
                            Activity Name</td>
                        <td  >
                            <asp:Label ID="lblActivityName" runat="server" Width="200px" ForeColor ="black" BackColor="white" ></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            Question Description</td>
                        <td >
                            <asp:TextBox ID="txtDesc" runat="server" Height="100px" TextMode="MultiLine" 
                                Width="200px" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtDesc" ErrorMessage="*" Font-Bold="True" 
                                Font-Size="Larger" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            Provide Answer Here</td>
                        <td >
                            <asp:TextBox ID="txtAnswer" runat="server" Height="100px" TextMode="MultiLine" 
                                Width="200px"></asp:TextBox>
                        </td>
                        <td valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtAnswer" ErrorMessage="*" Font-Bold="True" 
                                Font-Size="Larger" ForeColor="White"></asp:RequiredFieldValidator>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            Supportive Files if any</td>
                        <td >
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                        <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp; <asp:Button ID="btnAttach" 
                                runat="server" Text="Attach" CausesValidation="False" 
                                onclick="btnAttach_Click" />
                          </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            File Description</td><td style="background-color: #E1FFFF">
                                <asp:TextBox ID="txtFileDesc" runat="server" Height="100px" TextMode="MultiLine" 
                                    Width="197px"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtFileDesc" ErrorMessage="*" Font-Bold="True" 
                                Font-Size="Larger" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp; <span class="style10">* </span>are mandatory
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Button ID="btnSubmit" runat="server" Height="26px" 
                                OnClick="btnSubmit_Click" Text="Submit" Width="69px" />
                        </td>
                        <td >
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
                        <div id="divProgress" runat="server" 
                            
                            style="background-color: White; font-weight: bold; font-family: Verdana; font-size: medium;width:282px; height:auto;vertical-align:middle">
                        <center style="width: 273px; color: #FF0063;">
                            In Processing please wait....<br />
                            <img src="../Images/Process.gif" style="height: 80px; width: 80px" />
                        </center>
                        </div>
                        <cc1:AlwaysVisibleControlExtender TargetControlID="divProgress"  HorizontalSide="Center" VerticalSide="Middle" ID="AlwaysVisibleControlExtender1" runat="server">
                        </cc1:AlwaysVisibleControlExtender>
                    </ProgressTemplate>
                </asp:UpdateProgress>
        
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>

