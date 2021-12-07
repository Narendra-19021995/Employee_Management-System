<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_emp.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.View_emp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="style.css">
     <link rel="Stylesheet" href="../design1.css">
</head>
<body>
 <form id="form2" runat="server">
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
       <center>Employee Info</center>
      <div>
           <%-- <asp:Button runat="server" ID="btnFill" Text="Fill Grid"  OnClick="btnFill_Click"
                />--%>
            <br /> <br /> 
            <asp:GridView runat="server" ID="datagrid" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="datagrid_PageIndexChanging">
               <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
               </Columns>
                </asp:GridView>
        </div>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
    
</body>
</html>
