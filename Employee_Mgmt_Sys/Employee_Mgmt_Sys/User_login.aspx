<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_login.aspx.cs" Inherits="Employee_Mgmt_Sys.User_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="StyleSheet1.css" />
</head>
<body>
      <form id="form1" runat="server">
    <div class="login-box">
        <div class="row">
            <img src="user.jpg" alt="" />
        </div>
        <h2>User Login</h2>
         <div class="user-box">
             <asp:TextBox ID="username" runat="server"></asp:TextBox><br />
        <label><i class="fa fa-user" aria-hidden="true"></i>Username</label>
        </div>
        <div class="user-box">
            <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox><br />
        <label><i class="fa fa-unlock" aria-hidden="true"></i>Password</label>
        </div>
        <asp:Button ID="login" runat="server" class="button button2" Text="Login" onclick="login_Click" />
        <input id="Reset1" type="reset" class="button button1" value="Cancel" />
    </div>
    </form>
</body>
</html>
