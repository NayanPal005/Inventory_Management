<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>                      
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Dashboard/views/style.css" type="text/css">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inventory System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    </head>
    <body background="Image/login.jpg" width="100%" height="100%">
        
    <html>
        <a href="index.jsp"></a>
    </html>
              

        <header><br>
            
             <center><h1><font color="white">LOGIN PANEL<font></h1></center>
        </header>
        <main>
            <!--login form--> 
            <center>
                <div class="image">
                    <img src="Image/logo2.png" width="250px" style="margin-left:125px" alt="">
                </div>
            </center>
            <center>
                 <form action="index.jsp" method="">
                     <div class="lgn">
                         <table  > <br> <br> <br>
                             <tr><td><b><font color="white">USER NAME:</font></b></td><td><input type ="text" name="name" placeholder="Enter Your Name" patter="[a-z][A-Z]{5,10}" autocomplete="off"></tr><br> <br>
                         </table><br>
                     </div>
                     <div class="lgn_2">
                         <table>
                             <tr><td><b><font color="white">PASSWORD: </font></b></td><td><input type="text" name="password" placeholder="Enter your Password" <!--pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" autocomplete="off"-->></tr>
                         </table>
                     </div>
                </form>
                </center>
                 <div class="lg-in">
                     <a href="index.jsp">
                         <button class="green"><b>LOG IN</b></i> &nbsp;</button>&nbsp;
                         </a>
                    </div>
                <div class="Rst">
                <a href="loginTuhin.jsp">
                <button class="red"><b>RESET</b></button>
                </a>
                </div>
            
        </main><br><br><br><br><br><br><br>
        <footer>
            <details>
                <summary><font color ="white">Copyright:1994-2016.</font></summary><br>
                </details>
            <p><font color="white">All rights reserved.</font></p>
            <p><font color ="white">==>THIS SYSTEM IS DEVELOPED BY THE TEAM "OPTIMUS PRIME"<font></p>
        </footer>
    </body>
</html>

