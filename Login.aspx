<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>Login to Online Kitchen</title>		
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

	<form ID="loginform" runat="server">
		<fieldset>
		
			<legend>Log in</legend>
			
			<label for="txtUserID">User name</label>
			<asp:TextBox ID="txtUserID" TextMode="SingleLine" runat="server"/>
			<div class="clear"></div>
			
			<label for="password">Password</label>
			<asp:TextBox ID="txtPassword" TextMode="Password" runat="server"/>
			<div class="clear"></div>
			
			<label for="remember_me" style="padding: 0;">Remember me?</label>
			<input type="checkbox" id="remember_me" style="position: relative; top: 3px; margin: 0; " name="remember_me"/>
			<div class="clear"></div>
			<br />
			
                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                onclick="btnLogin_Click" CssClass="button" />
			        
		</fieldset>
	</form>
	
</body>

</html>