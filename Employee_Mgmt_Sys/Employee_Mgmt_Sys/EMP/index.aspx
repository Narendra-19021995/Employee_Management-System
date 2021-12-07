<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Employee_Mgmt_Sys.EMP.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link type="" rel="stylesheet" href="style.css"/>
     <link rel="Stylesheet" href="../design1.css">
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
      <h3>Employee Leaderboard</h3>
      <asp:GridView runat="server" ID="datagrid" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" 
        OnPageIndexChanging="datagrid_PageIndexChanging_1" 
        onselectedindexchanged="datagrid_SelectedIndexChanged_1">
        <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
        </Columns>
        </asp:GridView>
      </center>
    </div>
    <div class="admin_index">
    <center>
    <h3>Project Due</h3>
    <asp:GridView runat="server" ID="GridView1" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" 
        OnPageIndexChanging="datagrid_PageIndexChanging_2" 
        onselectedindexchanged="datagrid_SelectedIndexChanged_2">
        <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </center>
    </div>
     <div class="admin_index">
     <center>
     <h3>Salary Status</h3>
    <asp:GridView runat="server" ID="GridView2" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" 
        OnPageIndexChanging="datagrid_PageIndexChanging_3" 
        onselectedindexchanged="datagrid_SelectedIndexChanged_3">
        <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </center>
    </div>
     <div class="admin_index">
     <center>
      <h3>Leave Status</h3>
    <asp:GridView runat="server" ID="GridView3" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" 
        OnPageIndexChanging="datagrid_PageIndexChanging_4" 
        onselectedindexchanged="datagrid_SelectedIndexChanged_4">
        <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </center>
    </div>
     <script type="" src="sticky.js"></script>
     </div>
     </form>
     
</body>
</html>

