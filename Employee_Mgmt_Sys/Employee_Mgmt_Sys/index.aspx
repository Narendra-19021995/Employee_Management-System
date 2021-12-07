<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Employee_Mgmt_Sys.index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>

<body>
    <div class="contain">
   <!--Navbar Header-->
       <div id="navbar">
       
       <ul>
       <p class="brand">Employee Management System</p>
       <a href="#home">Home</a>
       <a href="#contact">Contact</a>
       <a href="javascript:void(0)" class="btn btn-info btn-lg" id="myBtn">
          <span class="glyphicon glyphicon-log-in"></span> Log in
        </a>
       </ul>
       </div>
       <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <div class="row">
  <div class="column">
   <a href="admin_log.aspx" class="ankers"><img src="admin.jpg" class="img" />
   <p align="center">Admin Login</p></a>
  </div>
  <div class="column">
     <a href="User_login.aspx" class="ankers"><img src="user.jpg" class="img" />
     <p align="center">User Login</p></a>
  </div>
</div>
  </div>

  </div>
       <!--Content Page-->
        <form id="form1" runat="server">
           <div class="content">
           <section id="home">
           <div class="homesection">
           <p class="welcome">Welcome</p>
           <p class="welcome to">To</p>
           <p class="welcome to">Employee Management System</p>
           <center><img src="backwall.jpg" class="image"/></center>
           </div>
           </section> 
           <section id="contact">
           <div class="contactsection">
           <p class="welcome">Contact</p>
           </div>
           </section>
           </div>
           <script src="sticky.js"></script>
        </form>
    </div>

   

</body>

</html>
