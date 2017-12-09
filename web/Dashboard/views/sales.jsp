<!DOCTYPE html>
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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <!--<link rel="stylesheet" href="style_sales.css" type="text/css"> -->

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
                <li><a href="../../index.jsp"><i class="fa fa-dashboard"></i>Home</a></li>

            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Small boxes (Stat box) -->


            <main>
                <div class="panel panel-primary">
                <div class="container">
                    
                        

                    <form class="form-inline">
                        <label><h1>Sales</h1></label>
                        <table>
                            <tr>
                                <td>
                                    <label for="">Category: </label><br>
                                    <select class="form-control" id="sel1">
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
                                        <option>Electronics</option>
                                        <option>Toy</option>
                                        <option>Sports</option>
                                    </select><br>
                                </td>
                                <td>


                                    <div class="form-group">
                                        <label for="customer id">Product Name: </label><br>
                                        <input type="customer id" class="form-control" id="customer id" placeholder="Enter Product Name">
                                    </div><br>
                                </td>
                                <td>


                                    <div class="form-group">
                                        <label for="customer id">Tag Number :</label><br>
                                        <input type="customer id" class="form-control" id="customer id" placeholder="Enter Tag Number">
                                    </div><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label for="customer id">Quantity:</label><br>
                                        <input type="customer id" class="form-control" id="customer id" placeholder="Enter Quantity">
                                    </div><br>
                                </td>
                                <td>
                                    <label for="">Select Unit: </label><br>
                                    <select class="form-control" id="sel1">
                                        <option>Select</option>
                                        <option>Kilo Gram</option>
                                        <option>Gram</option>
                                        <option>Liter</option>
                                        <option>Milli Liter</option>
                                        <option>Meter</option>
                                        <option>C.Meter</option>
                                        <option>Piece</option>
                                        <option>Case</option>
                                    </select><br>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="customer id">Per Unit Price: </label><br>
                                        <input type="customer id" class="form-control" id="customer id" placeholder="Enter  per unit price">
                                    </div><br>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label for="customer id">Total Price: </label><br>
                                        <input type="customer id" class="form-control" id="customer id" placeholder="Enter Total Price">
                                    </div><br>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="customer id">Date: </label><br>
                                        <input type="date" name="pdate" class="form-control">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="btn">
                                        <button class="btn btn-primary">GET BILL</button>
                                    </div>
                                    <button class="btn btn-danger">RESET</button>
                                </td>
                            </tr>
                            </tr>
                        </table>
                    </form>
                </div>
                </div>
            </main>


            &nbsp; <!--end of 1st part -->
            <br>

            
            <div class="container">
                <legend><b>CALCULATOR</b></legend>
                <form name="Calc" class="form-inline">

                    <table border=6>
                        <tr>
                            <td align=right>
                                <input type="text"   name="Input" size="35"  style=" text-align: justify">
                                <br>
                            </td>
                        </tr>
                        <td>

                            <input type="button" NAME="one"   VALUE="  1  " OnClick="Calc.Input.value += '1'">
                            <input type="button" NAME="two"   VALUE="  2  " OnCLick="Calc.Input.value += '2'">
                            <input type="button" NAME="three" VALUE="  3  " OnClick="Calc.Input.value += '3'">
                            <input type="button" NAME="times" VALUE="  -  " OnClick="Calc.Input.value += ' - '">
                            <input type="button" NAME="r_paren" VALUE="  )  " OnClick="Calc.Input.value += ' ) '">
                            <br>

                            <input type="button" NAME="four"  VALUE="  4  " OnClick="Calc.Input.value += '4'">
                            <input type="button" NAME="five"  VALUE="  5  " OnCLick="Calc.Input.value += '5'">
                            <input type="button" NAME="six"   VALUE="  6  " OnClick="Calc.Input.value += '6'">
                            <input type="button" NAME="minus" VALUE="  X  " OnClick="Calc.Input.value += ' * '">
                            <input type="button" NAME="l_paren" VALUE="  (  " OnClick="Calc.Input.value += ' ( '">
                            <br>

                            <input type="button" NAME="seven" VALUE="  7  " OnClick="Calc.Input.value += '7'">
                            <input type="button" NAME="eight" VALUE="  8  " OnCLick="Calc.Input.value += '8'">
                            <input type="button" NAME="nine"  VALUE="  9  " OnClick="Calc.Input.value += '9'">
                            <input type="button" NAME="plus"  VALUE="  /  " OnClick="Calc.Input.value += ' / '">
                            <input type="button" NAME="clear"VALUE="  C  " OnClick="Calc.Input.value = ''">
                            <br>

                            <input type="button" NAME="point" STYLE="font-size:110%" VALUE="  .  " OnClick="Calc.Input.value += '.'">
                            <input type="button" NAME="zero"  VALUE="  0  " OnClick="Calc.Input.value += '0'">
                            <input type="button" NAME="Equals"  VALUE="  =  " OnClick="Calc.Input.value = eval(Calc.Input.value)">
                            <input type="button" NAME="div"   VALUE="  +  " OnClick="Calc.Input.value += ' + '">
                        </td>
                    </table>
                </form>
            </div>

            <br>
            <div class="panel panel-primary">
            <div class="container">
                <legend><h2>Items Details</h2></legend>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>SL. No.</th>
                            <th>Category</th>
                            <th>Product Name</th>
                            <th>Tag Number</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                            <th>Per Unit Price(TK)</th>
                            <th>Total Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Vegetables</td>
                            <td>Carrot</td>
                            <td>12458</td>
                            <td>250</td>
                            <td>ML</td>
                            <td>1</td>
                            <td>250</td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-pencil"></i>
                                    Edit
                                </a>
                                <a href="#"  class="btn btn-danger btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-cancel"></i>
                                    Delete
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Vegetables</td>
                            <td>Carrot</td>
                            <td>12458</td>
                            <td>250</td>
                            <td>ML</td>
                            <td>1</td>
                            <td>250</td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-pencil"></i>
                                    Edit
                                </a>
                                <a href="#"  class="btn btn-danger btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-cancel"></i>
                                    Delete
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Vegetables</td>
                            <td>Carrot</td>
                            <td>12458</td>
                            <td>250</td>
                            <td>ML</td>
                            <td>1</td>
                            <td>250</td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-pencil"></i>
                                    Edit
                                </a>
                                <a href="#"  class="btn btn-danger btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-cancel"></i>
                                    Delete
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Vegetables</td>
                            <td>Carrot</td>
                            <td>12458</td>
                            <td>250</td>
                            <td>ML</td>
                            <td>1</td>
                            <td>250</td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-pencil"></i>
                                    Edit
                                </a>
                                <a href="#"  class="btn btn-danger btn-sm btn-icon icon-left" role="button">
                                    <i class="entypo-cancel"></i>
                                    Delete
                                </a>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
            </div>

            
            <div class="panel panel-primary">
            <div class="container">

                <form class="form-inline">
                    <div class="form-group"> <br><br>

                        <legend><b>Customer Info</b></legend>

                        <div class="col-sm-12">
                            <h3>The customer has any membership? </h3>
                            <div class="form-group">
                                <select id="member" name="member" class="form-control">
                                    <option>Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div><br>
                            <div id="parentPermission1">
                                <table>
                                    &nbsp;
                                    <tr><td>Name: <input type="text" name="name" class="form-control" placeholder="Enter Name"></td>
                                        <td>
                                            <div class="container">
                                                Gender: 
                                                <div class="radio">
                                                    <label><input type="radio" name="rsame" id="#">Male</label>
                                                </div>
                                                <div class="radio">
                                                    <label><input type="radio" name="rsame" id="#">Female</label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>


                                    <tr><td>Phone No. <input type="text" name="name" class="form-control" placeholder="Enter Name"></td></tr>
                                    <tr><td>
                                            <div class="form-group">
                                                <label for="comment">Address: </label>
                                                <textarea class="form-control" rows="5" id="comment"></textarea>
                                            </div>
                                        </td>
                                    </tr>





                                </table>
                            </div>
                        </div>
                        <div id="parentPermission">
                            <table>
                                &nbsp;
                                <tr><td>User ID.:  <input type="text" name="name" class="form-control" placeholder="Enter User Id"></td></tr>
                            </table>
                        </div>

                    </div>
                </form>
            </div>
                <br>
            </div>

                </main>

                <footer></footer>&nbsp;
                <br>
                <br>
                <br>
                <div class="mydiv">

                    <a href="sales_final.jsp"><button><b>GET FINAL COPY FOR PRINT</b></button></a>

                </div>
                <!-- ./col -->

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

<script>
    $(document).ready(function () {
        toggleFields(); //call this first so we start out with the correct visibility depending on the selected form values
        //this will call our toggleFields function every time the selection value of our underAge field changes
        $("#member").change(function () {
            toggleFields();
        });

    });
//this toggles the visibility of our parent permission fields depending on the current selected value of the underAge field
    function toggleFields() {
        if ($("#member").val() <= 1) {
            $("#parentPermission").show();
            $("#parentPermission1").hide();
        } else if ($("#member").val() <= 2) {
            $("#parentPermission1").show();
            $("#parentPermission").hide();
        } else {
            $("#parentPermission").hide();
            $("#parentPermission1").hide();

        }
    }
</script>
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
