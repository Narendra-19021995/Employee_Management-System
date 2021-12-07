<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applyleav.aspx.cs" Inherits="Employee_Mgmt_Sys.EMP.applyleav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="style.css">
     <link rel="Stylesheet" href="../design1.css">
     <style>

.input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
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
</style>
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
      <h3>Appy for Leave</h3>

<div class="containers">
  
    <table>
    <tr>
    <td colspan=2><asp:TextBox ID="reason" runat="server" CssClass="input" TextMode="MultiLine" placeholder="Enter Reason for leave..." /></td>
    </tr>
    <tr>
    <td><asp:TextBox ID="startdate" runat="server" CssClass="input" TextMode="Date" placeholder="Enter start Date" /></td>
    <td><asp:TextBox ID="enddate" runat="server" CssClass="input" TextMode="Date" placeholder="Enter End Date" /></td>
    </tr>
    <tr>
    <td><center><asp:Button ID="Submit" runat="server" Text="Submit" CssClass="input" 
            onclick="Submit_Click" /></center></td>
    <td><center><input type="reset" runat="server" cssClass="input" /></center></td>
    </tr>
    </table>
</div>
<div class="">  
<h3>Leave Status</h3>
   <asp:GridView runat="server" ID="datagrid" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" 
        OnPageIndexChanging="datagrid_PageIndexChanging" 
        onselectedindexchanged="datagrid_SelectedIndexChanged">
        <Columns>
               <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>
        </Columns>
        </asp:GridView>
</div>
</center>
       </div>       
    </div>
     <script src="sticky.js"></script>
      </form>
</body>
</html>
