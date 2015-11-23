<%@ Page Language="C#" MasterPageFile="~/Volunteers/VolunteerMasterPage.master" AutoEventWireup="true"
    CodeFile="frmVolenteerInbox.aspx.cs" Inherits="Volunteers_frmVolenteerInbox"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:UpdatePanel ID="panel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridInboxdetails" EventName="RowCommand" />
                <asp:AsyncPostBackTrigger ControlID="btnDelete" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <br />
                <br />
                <asp:Panel ID="mainPanel" runat="server">
                    <table width="80%" border="1" >
                        <tr>
                            <td >
                              
                                <center >
                                  Inbox Details
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td >
                                            <asp:GridView ID="GridInboxdetails" Width="100%" runat="server" CellPadding="4" ForeColor="black" BackColor ="AliceBlue"
                                                GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridInboxdetails_RowCommand"
                                                OnRowDataBound="GridInboxdetails_RowDataBound" EmptyDataText="No Emails ">
                                                <FooterStyle  Font-Bold="True" />
                                                <RowStyle ForeColor="White" />
                                                <PagerStyle  ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle  Font-Bold="True"  />
                                                <HeaderStyle Font-Bold="True"  />
                                                <EditRowStyle  />
                                                <AlternatingRowStyle   />
                                                <Columns>
                                                    <asp:TemplateField ControlStyle-Width="5%" HeaderStyle-Width="5%">
                                                        <HeaderTemplate>
                                                            <asp:CheckBox ID="chkSelectAll" runat="server" Text="SelectAll" AutoPostBack="true"
                                                                OnCheckedChanged="chkSelectAll_CheckedChanged" />
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk1" runat="server" />
                                                        </ItemTemplate>
                                                        <ControlStyle Width="5%"></ControlStyle>
                                                        <HeaderStyle Width="5%" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="20%" HeaderText="SenderName">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="linkSendername" Font-Bold="true" ForeColor="black" runat="server"
                                                                Text='<%#Eval("UserName") %>' CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton>
                                                            <asp:Label ID="lblReadstatus" runat="server" Text='<%#Eval("EmailReadStatus") %>'
                                                                Visible="false"></asp:Label>
                                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("EmailId") %>' Visible="false"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="20%"></ControlStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="50%" ItemStyle-Width="50%" HeaderText="Subject">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="linksubject" runat="server" Font-Bold="true" ForeColor="black"
                                                                Text='<%#Eval("emailsubjecttext") %>' CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="50%"></ControlStyle>
                                                        <ItemStyle Width="50%" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="25%" HeaderText="Date">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="linkDate" runat="server" Font-Bold="true" ForeColor="black" Text='<%#Eval("Date") %>'
                                                                CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="25%"></ControlStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <table style="text-align: left">
                                                <tr>
                                                    <td align="left">
                                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                                    </td>
                                                </tr>
                                            </table>
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
                            <td bgcolor="#E1FFFF" style="background-color: #E1FFFF">
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
                            <div id="Progress" runat="server" style="background-color: Gray; font-weight: bold;
                                font-family: Verdana; font-size: medium; width: 300px; height: auto; vertical-align: middle">
                                <center>
                                    Processing......<br />
                                    <img src="../Images/Process.gif" height="100px" width="100px" />
                                </center>
                            </div>
                            <cc1:AlwaysVisibleControlExtender TargetControlID="Progress" HorizontalSide="Center"
                                VerticalSide="Middle" ID="AlwaysVisibleControlExtender1" runat="server">
                            </cc1:AlwaysVisibleControlExtender>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </center>
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>
