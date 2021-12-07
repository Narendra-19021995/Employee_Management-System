<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addemp.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.Addemp" %>

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
       <td colspan="2"><center>Register info</center></td>
       </tr>
       <tr><td>   </td></tr>
       <tr>
       <td><asp:TextBox ID="fname" runat="server" placeholder="Enter Name" CssClass="textbox" required/></td>
       <td><asp:TextBox ID="lname" runat="server" placeholder="Enter Last Name" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="0"><asp:TextBox ID="email" runat="server" placeholder="enter email@ddress" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td><asp:Label runat="server" ID="date" Text="Date of Birth" CssClass="label"/></td>
       <td colspan="0"><asp:TextBox ID="calendar" runat="server" TextMode="Date" placeholder="Date od Birth" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td><asp:Label ID="gender" runat="server" Text="Gender" CssClass="label"/> </td>
       <td colspan="0"><asp:DropDownList ID="genders" runat="server" CssClass="textbox">
               <asp:ListItem Text="select" Value="0">Select</asp:ListItem>
               <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
               <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
           </asp:DropDownList></td>
       </tr>
       <tr>
      
       <td colspan="2"><asp:TextBox ID="contact" runat="server" placeholder="Enter Contact" CssClass="textbox" required/></td>
       </tr>
       <tr>
      
       <td colspan="2"><asp:TextBox ID="country" runat="server" placeholder="Enter Country" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="2"><asp:TextBox ID="add" runat="server" placeholder="Enter address" CssClass="textbox" required/></td>
       </tr>
       <tr>
      
       <td colspan="2"><asp:TextBox ID="Department" runat="server" placeholder="Enter Department" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="2"><asp:TextBox ID="Degree" runat="server" Placeholder="Enter Degree" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="0"><asp:TextBox ID="salary" runat="server" placeholder="Enter Salary" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="0"><asp:TextBox ID="uname" runat="server" placeholder="Username" CssClass="textbox" required/></td>
       </tr>
       <tr>
       <td colspan="0"><asp:TextBox ID="pword" runat="server" placeholder="Password" CssClass="textbox" required/></td>
       </tr>
      <%-- <tr>
       <td colspan="0"><asp:FileUpload ID="files" runat="server" CssClass="textbox" required/></td>
       </tr>--%>
       <tr><td><asp:Button ID="sub" runat="server" Text="Submit" CssClass="submit" 
               onclick="sub_Click" /></td>
       <td><input id="Reset1" type="reset" value="Reset" class="reset" /></td>
       </tr>
       </table>
       </center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
</body>
</html>