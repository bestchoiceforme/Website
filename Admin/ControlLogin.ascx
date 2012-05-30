<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ControlLogin.ascx.cs" Inherits="ControlLogin" %>
<fieldset>
    <legend>Profile</legend>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
            <tr>
                <td>
                    User ID:</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUserID" runat="server" Width="100%"></asp:TextBox>
                  </td>
            </tr>
            <tr>
                <td>
                    Password:</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" /></td>
            </tr>           
            <tr>                
            </tr>
            <tr>
                <td align="center">

                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
            <tr>
                <th>
                    <asp:Image ID="Image1" runat="server" BorderStyle="Inset" BorderWidth="1px" Height="120px"
                        Width="100px" /><br />
                    <asp:Label ID="lblFullname" runat="server" Text="Label"></asp:Label></th>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblUserID" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>
            <tr>
                <td align="center">
                    [<asp:LinkButton ID="lnkSignOut" runat="server" OnClick="lnkSignOut_Click">Sign Out</asp:LinkButton>]
                    [<a href="MyAccount.aspx">Edit Profile</a>]
                </td>
            </tr>
        </table>
        </asp:View>
    </asp:MultiView></fieldset>
