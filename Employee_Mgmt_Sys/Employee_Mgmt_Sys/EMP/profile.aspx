<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Employee_Mgmt_Sys.EMP.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="style.css"/>
     <%--<link rel="Stylesheet" href="../Bootstrap/css/bootstrap.min.css" />--%>
  <style>
.input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 8px;
  resize: vertical;
}

.input[type=submit],[type=reset] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.input[type=reset]:hover {
  background-color: #45a049;
}

.input[type=submit]:hover {
  background-color: #45a049;
}

.containers {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.label{
    cursor:default;
    font-size:x-large;
    font-family:Cambria;
    font-style:normal;
    }
</style>
</head>
<body>
 <form id="form1" runat="server">
    <div class="">
   <!--Navbar Header-->
       <div id="navbars">
       
       <ul class="uls">
       <p class="brand">Employee Management System</p>
       <a href="index.aspx">Home</a>
       <a href="profile.aspx">My Profile</a>
       <a href="Myproject.aspx">My Project</a>
       <a href="applyleav.aspx">Apply Leave</a>
       <a href="javascript:void(0)" id="myBtn">
           <asp:Label ID="Username" runat="server" Text=""></asp:Label>
           <asp:Button ID="logout" class="btn-primary" runat="server" Text="Logout" onclick="logout_Click"/></a>
       </ul>
       </div>
     
       <!--Content Page-->
       <div class="admin_index ">
      <center>
      <h2>Profile</h2>
      <table>
      <tr>
      <td><asp:Label ID="N_ame" runat="server" CssClass="label" Text="Name" /></td>
      <td><asp:TextBox ID="name" class="input" runat="server" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="L_name" runat="server" Text="Last Name" CssClass="label" /></td>
      <td><asp:TextBox ID="lname" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="E_mail" runat="server" Text="E-mail" CssClass="label" /></td>
      <td><asp:TextBox ID="email" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="B_ob" runat="server" CssClass="label" Text="Date Of Birth" /></td>
      <td><asp:TextBox ID="DOB" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="G_ender" runat="server" Text="Gender" CssClass="label"/></td>
      <td><asp:TextBox ID="gender" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="c_ontact" runat="server" Text="Contact" CssClass="label" /></td>
      <td><asp:TextBox ID="contact" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="c_ountry" runat="server" Text="Country" CssClass="label" /></td>
      <td><asp:TextBox ID="country" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="A_dress" runat="server" Text="Address" CssClass="label" /></td>
      <td><asp:TextBox ID="Address" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="d_epart" runat="server" Text="Department" CssClass="label" /></td>
      <td><asp:TextBox ID="department" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="de_gree" runat="server" Text="Degree" CssClass="label" /></td>
      <td><asp:TextBox ID="degree" runat="server" class="input" /></td>
      </tr>
      <tr>
      <td><asp:Label ID="sa_lary" runat="server" Text="Salary" CssClass="label" /></td>
      <td><asp:TextBox ID="salary" runat="server" class="input" /></td>
      </tr>
      </table>
      </center>
       </div>       
    </div>
    <script type="text/jscript" src="sticky.js"></script>
    </form>
      
</body>
</html>
