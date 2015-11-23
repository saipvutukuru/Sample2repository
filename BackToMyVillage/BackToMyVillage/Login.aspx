<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
        
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center >

        <br />
       <br />
       <br />
       <br />
        <table width="60%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
            <tr>
                <td >
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <table>
                        <tr>
                            <td style="text-align: right; color:White ">
                                <b>User Name :</b>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtUsername" runat="server" Width="160px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtUsername" ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <b style="color: White ">Password :</b>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <asp:Button ID="btnLogin" Text="Log In" runat="server" OnClick="btnLogin_Click" />
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Style="font-weight: 700; font-size: xx-small;
                        color: #FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#C97536" style="background-color:Silver">
                    <br />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

