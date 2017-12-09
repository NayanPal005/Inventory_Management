<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inventory System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../../plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="../../plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- <link rel="stylesheet" href="style.css" type="text/css">-->
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/bootstrap.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="../../index.jsp" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>A</b>PL</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Admin</b>Panel</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                </a> 
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                </a>

                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../../Image/logo.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs"> Optimus Prime</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../../Image/logo.png" class="img-circle" alt="User Image">

                                        <p>
                                            Optimus Prime - Web Developer
                                            <small>Member since 2016</small>
                                        </p>
                                    </li>

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="../../Image/logo.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Optimus Prime</p>

                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-shopping-basket"></i> <span>Sales</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="active"><a href="sales.jsp"><i class="fa fa-circle-o"></i> Product Sales</a></li>
                                <li><a href="#"><i class="fa fa-circle-o"></i> History</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Purchase</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="purchase.jsp"><i class="fa fa-circle-o"></i> Product Purchase</a></li>
                                <li><a href="ProductList.jsp"><i class="fa fa-circle-o"></i> Product List</a></li>
                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span>Customer</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="customer_info.jsp"><i class="fa fa-circle-o"></i> Add New</a></li>
                                <li><a href="CustomerLists.jsp"><i class="fa fa-circle-o"></i> Membership Info</a></li>
                            </ul>
                        </li>
                    <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>User</span>
                        <i class="fa fa-angle-left pull-right"></i>                                                       
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="user.jsp"><i class="fa fa-circle-o"></i> Add User</a></li>

                    </ul>
                    </li>
                    <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>Dealership</span>
                        <i class="fa fa-angle-left pull-right"></i>                                                       
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="Dealership.jsp"><i class="fa fa-circle-o"></i> Add Dealer</a></li>

                    </ul>
                </li>
            </ul>

        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Dashboard
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="../../index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>

            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="part">
                <!-- Small boxes (Stat box) -->
                <div class="panel panel-primary">
                    <div class="container">
                        <b><h2>Product Purchase</h2></b>
                        <form class="form-inline" action="purchaseDB.jsp" method="post">
                            <table>
                                <tr>
                                    <td>
                                <div class="form-group">
                                    <label for="category">Category:</label><br>
                                    <select class="form-control" id="category" NAME="category">
                                        <option default>Select Category</option>
                                        <option>Home Appliances</option>
                                        <option>Grocery</option>
                                        <option>Vegetables</option>
                                        <option>Bread</option>
                                        <option>Fish</option>
                                        <option>Meat</option>
                                        <option>Diary</option>
                                        <option>Bevarage</option>
                                        <option>Paper Goods</option>
                                        <option>Personal Care</option>
                                        <option>Electronis</option>
                                        <option>Toy</option>
                                        <option>Sports</option>
                                    </select>
                                </div><BR/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                
                                <div class="form-group">
                                    <label for="code">Code:</label><br>
                                    <input type="code" class="form-control" id="code" NAME="code" placeholder="Enter code">
                                </div>
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="product_name">Product Name:</label><br>
                                    <input type="product_name" class="form-control" id="product_name" NAME="product_name" placeholder="Enter Product Name">
                                </div><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="product_name">Company Name:</label><br>
                                    <input type="product_name" class="form-control" id="product_name" NAME="product_name" placeholder="Enter Product Name">
                                </div><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                    <label for="quantity">Quantity:</label><br>
                                    <input type="quantity" class="form-control" id="quantity" NAME="quantity" placeholder="Enter quantity">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="unit">Unit:</label><br>
                                    <select class="form-control" id="unit" NAME="unit">
                                        <option default="select unit">Select Unit</option>
                                        <option>K.G</option>
                                        <option>Gram</option>
                                        <option>Litre</option>
                                        <option>Piece</option>
                                        <option>Chase</option>
                                        <option>Inch</option>
                                        <option>Miter</option>
                                        <option>C.M</option>                                      
                                    </select>
                                </div><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="price">Per-Unit-Price:</label><br>
                                    <input type="price" class="form-control" id="price" NAME="per_unit_price" placeholder="Enter Per-Unit_price">
                                </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="exp_date">Purchase Date:</label><br>
                                    <div class="container">
                                        <div class="hero-unit">
                                            <input  type="text" placeholder="Select date : dd/mm/yy"  id="man_date" NAME="man_date">
                                        </div>
                                    </div>
                                    <script src="js/jquery-1.9.1.min.js"></script>
                                    <script src="js/bootstrap-datepicker.js"></script>
                                    <script type="text/javascript">
                                    $(document).ready(function () {

                                        $('#man_date').datepicker({
                                            format: "dd/mm/yyyy"
                                        });
                                    });
                                    </script>
                                </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <div class="form-group">
                                    <label for="exp_date">Expire Date:</label><br>
                                    <div class="container">
                                        <div class="hero-unit">
                                            <input  type="text" placeholder="Select date : dd/mm/yy"  id="exp_date" NAME="exp_date">
                                        </div>
                                    </div>
                                    <script src="js/jquery-1.9.1.min.js"></script>
                                    <script src="js/bootstrap-datepicker.js"></script>
                                    <script type="text/javascript">
                                    $(document).ready(function () {

                                        $('#exp_date').datepicker({
                                            format: "dd/mm/yyyy"
                                        });
                                    });
                                    </script>
                                </div>
                                </td>
                            </tr>
                                
                            <tr>
                            
                                <td>
                                  <button class="btn btn-danger">Submit</button>
                                </td>
                            </tr>
                              
                            
                            </table>
                           
                            <%
                     String category = request.getParameter("category");
                     String code = request.getParameter("code");
                     String product_name = request.getParameter("product_name");
                      String quantity = request.getParameter("quantity");
                      String unit = request.getParameter("unit");
                     String per_unit_price = request.getParameter("per_unit_price");
                     String man_date = request.getParameter("man_date");
                      String exp_date = request.getParameter("exp_date");
   
  

                      String connectionURL = "jdbc:mysql://localhost:3306/inventory";
                      Connection connection = null;
                       PreparedStatement pstatement = null;
     

                       int updateQuery = 0;
                           if(category!=null && code!=null && product_name!=null && quantity!=null && unit!=null && per_unit_price!=null && man_date!=null && exp_date!=null)
                           {
                               if(category!="" && code!="" && product_name!="" && quantity!="" && unit!="" && per_unit_price!="" && man_date!="" && exp_date!="")
                               {

                              try {
                                  Class.forName("com.mysql.jdbc.Driver").newInstance();
                                connection = DriverManager.getConnection(connectionURL,"root","");
                                String queryString = "insert into inventory_purchase(category,code,product_name,quantity,unit,per_unit_price,man_date,exp_date) values(?,?,?,?,?,?,?,?)";
                                pstatement = connection.prepareStatement(queryString);
              
                                pstatement.setString(1, category);
                                pstatement.setString(2, code);
                                pstatement.setString(3, product_name);
                                pstatement.setString(4, quantity);
                                pstatement.setString(5, unit);
                                pstatement.setString(6, per_unit_price);
                                pstatement.setString(7, man_date);
                                pstatement.setString(8, exp_date);
              
              
                                updateQuery = pstatement.executeUpdate();

                                if (updateQuery != 0) {
                                    %>
                                    
                                    <jsp:include page="Message.jsp"></jsp:include>
                                    
                                    <%
                                                    }
                        } 
                        catch (Exception ex){
                        out.println("Unable to connect to batabase.");
   
                        }finally {
                        if ( pstatement != null )
                        pstatement.close();

                        if ( connection != null )
                        connection.close();
               
                }
            
                         }
                       }

                            %>

                        </table>
                        </form>
                            <div class="btn">
                                        <a href="supplier.jsp"><button class="btn btn-primary">Add Supplier</button></a>
                                   </div>
                    </div>
                  

                </div> 
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">

        </div>
        <strong>Copyright &copy; 2016-2017 <a href="#">Optimus Prime</a>.</strong> The Group Of Friends
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>

    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
                                    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../../plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="../../plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../../plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../../dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>
