<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_index.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.admin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
      <h3>Employee Leaderboard</h3>
      <asp:gridview ID="Gridview1" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
              CellPadding="3" DataKeyNames="rid" DataSourceID="SqlDataSource1" 
              GridLines="Vertical">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
          <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="100">
            <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
            </ItemTemplate>
          </asp:TemplateField>
              <%--<asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" 
                  ReadOnly="True" SortExpression="rid" />--%>
              <asp:BoundField DataField="Eid" HeaderText="Eid" SortExpression="Eid" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
              <asp:BoundField DataField="point" HeaderText="Point" SortExpression="point" />
              
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
          </asp:gridview>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:EMSConnectionString %>" 
              SelectCommand="Select  
               rank.*,
               emp_info.Name, LastName
               from
               rank
               join
               emp_info
               ON emp_info.Eid = rank.Eid
               order by point Desc;"></asp:SqlDataSource>
      </center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
     
</body>
</html>


