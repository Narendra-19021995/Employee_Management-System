<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myproject.aspx.cs" Inherits="Employee_Mgmt_Sys.EMP.Myproject" %>

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
       <a href="index.aspx">Home</a>
       <a href="profile.aspx">My Profile</a>
       <a href="Myproject.aspx">My Project</a>
       <a href="applyleav.aspx">Apply Leave</a>
       <a href="javascript:void(0)" id="myBtn">
           <asp:Label ID="Username" runat="server" Text=""></asp:Label>
           <asp:Button ID="logout" runat="server" Text="Logout" onclick="logout_Click"/></a>
       </ul>
       </div>
     
       <!--Content Page-->
        
       <div class="admin_index">
     <center>
     <h3>My Project</h3>
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
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("pid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Project Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ProName" runat="server" Text='<%#Eval("pname") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Due Date">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ddate" runat="server" Text='<%#Eval("duedate") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Submition Date">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_sdate" runat="server" Text='<%#Eval("subdate") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Mark">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Mark" runat="server" Text='<%#Eval("mark") %>'></asp:Label>  
                    </ItemTemplate>    
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
                        <asp:Button ID="btn_Update" runat="server" Text="Submit" CommandName="Update"/>  
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
     </center>
       </div>       
    </div>
     <script type="" src="sticky.js"></script>
      </form>
      
</body>
</html>
