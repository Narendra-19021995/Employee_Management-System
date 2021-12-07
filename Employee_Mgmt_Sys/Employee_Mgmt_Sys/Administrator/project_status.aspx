<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project_status.aspx.cs" Inherits="Employee_Mgmt_Sys.Administrator.project_status" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="style.css">
     <style type="text/css">
            .modalBackground
            {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
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
       <h3>Project Status</h3>
       <cc1:ToolkitScriptManager ID="ScriptManager1"  runat="server"></cc1:ToolkitScriptManager>

       <%--<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
              </asp:ToolkitScriptManager>--%>
       <div>
         <asp:GridView runat="server" ID="gvdetails" DataKeyNames="pid" AutoGenerateColumns="false">
         <RowStyle BackColor="#EFF3FB" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <AlternatingRowStyle BackColor="White" />
            <Columns>
           <%-- <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>
               </asp:TemplateField>--%>
            <asp:BoundField DataField="Eid" HeaderText="Eid" />
            <asp:BoundField DataField="pname" HeaderText="Project Name" />
            <asp:BoundField DataField="duedate" HeaderText="Due Date" />
            <asp:BoundField DataField="subdate" HeaderText="Submit Date" />
            <asp:BoundField DataField="Mark" HeaderText="Mark" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:TemplateField HeaderText="Mark">
            <ItemTemplate>
            <asp:ImageButton ID="imgbtn" ImageUrl="mark.jpg" runat="server" Width="25" Height="25" onclick="imgbtn_Click" />
            </ItemTemplate>
            </asp:TemplateField>
            </Columns>
            </asp:GridView>
            <asp:Label ID="lblresult" runat="server"/>
            <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
            <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
             CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
             </asp:ModalPopupExtender>--%>
             <cc1:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="btnShowPopup" PopupControlID="pnlpopup" CancelControlID="btnCancel" BackgroundCssClass="modalBackground" runat="server">
             </cc1:ModalPopupExtender>
             <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="300px" Width="500px" style="display:none">
                 <table width="100%" style="border:Solid 3px #D55500; width:100%; height:100%" cellpadding="0" cellspacing="0">
                       <tr style="background-color:#D55500">
                       <td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">User Details</td>
                       </tr>
                       <tr>
                       <td align="left" style=" width:45%">
                       Project ID:
                       </td>
                       <td>
                       <asp:Label ID="lblID" runat="server"></asp:Label>
                       </td>
                       </tr>
                       <tr>
                       <td align="left">
                       Employee ID:
                       </td>
                       <td>
                       <asp:Label ID="lblusername" runat="server"></asp:Label>
                       </td>
                       </tr>
                       <tr>
                       <td align="left">
                       Project name:
                       </td>
                       <td>
                       <asp:Label ID="txtfname" runat="server"/>
                       </td>
                       </tr>
                       <tr>
                       <td align="left">
                       Due Date:
                       </td>
                       <td>
                       <asp:Label ID="txtlname" runat="server"/>
                       </td>
                       </tr>
                       <tr>
                       <td align="left">
                       Submition Date:
                       </td>
                       <td>
                       <asp:Label ID="txtCity" runat="server"/>
                       </td>
                       </tr>
                       <tr>
                       <td align="left">
                       Mark:
                       </td>
                       <td>
                       <asp:TextBox ID="txtDesg" runat="server" placeholder="0"/>
                       </td>
                       </tr>
                       <tr>
                       <td>
                       </td>
                       <td>
                       <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update" onclick="btnUpdate_Click"/>
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                       </td>
                       </tr>
                       </table>
                       </asp:Panel>
                       </div>
       </center>
       </div>       
    </div>
     <script type="" src="sticky.js"></script>
      </form>
</body>
</html>
