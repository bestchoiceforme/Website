<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hệ thống quản lý ăn uống</title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form runat="server">
       <div class="header" align="center">
            <table align="center" width="40%">
                <tr align="center">
                    <td align="center" colspan="2"><h1>LOGIN IN SYSTEM</h1></td>
                </tr>
            </table>
       </div>
       <fieldset>
       <legend>Login</legend>
       <div class ="main">
            <table frame="box" bgcolor="#9999ff" cellpadding="5" cellspacing="5" align="center" width="40%" height="200px">
                <tr>
                    <td><h2>User name</h2></td>
                    <td align="left">
                        <asp:TextBox ID="txtUserID" runat="server" Height="100%"  width="100%" 
                            CssClass="textEntry"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                       <h2>Password</h2> 
                    </td>  
                    <td align="left">
                        <asp:TextBox ID="txtPassword" runat="server"  height="100%"  width="100%" 
                            CssClass="textEntry" TextMode="Password">                          
                                                       
                        </asp:TextBox>
                    </td>           
                </tr>
                   
                <tr>
                     <td colspan="2" align="right">
                        <asp:Button ID="btnLogin" Text="SIGN IN" runat="server" Height="100%" 
                             onclick="btnLogin_Click" CssClass="submitButton" />
                    </td>
                </tr>
                <tr>
                     <td colspan="2" align="right">
                        <asp:Label ID="lbError" Text="" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
       </div>
       </fieldset>
       
    </form>
</body>
</html>
