<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assign-project.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="style.css">
</head>
<body>
 <form id="form1" runat="server">
    <div class="container">
   <!--Navbar Header-->
       <div id="navbar">
       
       <ul>
       <p class="brand">Employee Management System</p>
       <a href="admin_index.aspx">Home</a>
       <a href="Addemp.aspx">Add EMP</a>
       <a href="View_emp.aspx">Veiw EMP</a>
       <a href="assign-project.aspx">Assign Project</a>
       <a href="project_status.aspx">Project Status</a>
       <a href="salary_table.aspx">Salary Table</a>
       <a href="Emp_leave.aspx">EMP Leave</a>
       <a href="javascript:void(0)" id="myBtn">
           <asp:Label ID="username" runat="server" Text=""></asp:Label>
           <asp:Button ID="logout" runat="server" Text="Logout" onclick="logout_Click"/></a>
       </ul>
       </div>
     
       <!--Content Page-->
       <div class="admin_index">
      <center>
      <table>
      <tr>
      <td>Assign Project</td>
      </tr>
      <tr><td><asp:TextBox ID="EMP_Id" runat="server" placeholder="Project ID" class="textbox" /></td></tr>
      <tr><td><asp:TextBox ID="Projectname" runat="server" placeholder="Project Name" class="textbox" /></td></tr>
      <tr><td><asp:TextBox ID="date" runat="server" placeholder="Date" TextMode="Date" class="textbox" /></td></tr>
      <tr><td><asp:Button ID="submit" runat="server" Text="Submit" class="submit" 
              onclick="submit_Click" />&nbsp&nbsp<input id="Reset1" type="reset" value="Reset" class="reset" /></td></tr>
      </table>
      </center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
     
</body>
</html>

