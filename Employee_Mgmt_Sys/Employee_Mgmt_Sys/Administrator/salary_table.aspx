<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salary_table.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.salary_table" %>

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
       <p>Salary Info</p>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="sid" DataSourceID="SqlDataSource1" CellPadding="10" 
               ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
                   <ItemTemplate>
                   <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                   </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                   <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                   <asp:BoundField DataField="base" HeaderText="Base" SortExpression="base" />
                   <asp:BoundField DataField="bonus" HeaderText="Bonus" SortExpression="bonus" />
                   <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="False" ForeColor="black" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="False" ForeColor="black" />
               <PagerStyle BackColor="#284775" ForeColor="Black" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           </asp:GridView>
      
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:EMSConnectionString %>" 
               SelectCommand="select Distinct
               salary.eid, bonus, sid, date, base, total,
               emp_info.Name, LastName
               from
               salary
               join
               emp_info
               ON emp_info.Eid = salary.Eid;">
               </asp:SqlDataSource>
       </center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
      
</body>
</html>
