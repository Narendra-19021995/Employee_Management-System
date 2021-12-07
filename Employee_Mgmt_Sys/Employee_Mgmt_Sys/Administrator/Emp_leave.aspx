<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_leave.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.Emp_leave" %>

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
          <h3>Employee Leave</h3>
          <div>     
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  CellPadding="8" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                  ForeColor="#333333" GridLines="None">  
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>  
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ln" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Reason">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Reason" runat="server" Text='<%#Eval("reason") %>'></asp:Label>  
                    </ItemTemplate>  
                   <%-- <EditItemTemplate>  
                        <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("reason") %>'></asp:TextBox>  
                    </EditItemTemplate>  --%>
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="StartDate">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_SD" runat="server" Text='<%#Eval("startdate") %>'></asp:Label>  
                    </ItemTemplate>  
                   <%-- <EditItemTemplate>  
                        <asp:TextBox ID="txt_City" runat="server" Text='<%#Eval("startdate") %>'></asp:TextBox>  
                    </EditItemTemplate>--%>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Enddate">
                <ItemTemplate>
                <asp:Label ID="lbl_ed" runat="server" Text='<%#Eval("enddate") %>'></asp:Label>
                </ItemTemplate>
                <%--<EditItemTemplate>
                <asp:TextBox ID="txt_endd" runat="server" Text='<%#Eval("enddate") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Action" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Approve" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" ForeColor="#ffffff" Font-Bold="True"/>  
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>  
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" Font-Size="Small" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>  
      
    </div>
      </center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
   
</body>
</html>
