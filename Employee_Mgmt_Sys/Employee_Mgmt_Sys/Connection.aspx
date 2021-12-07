<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connection.aspx.cs" Inherits="Employee_Mgmt_Sys.Connection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EmployeeMgtsysConnectionString %>" 
        SelectCommand="SELECT [Username], [Password] FROM [Admin_log]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
