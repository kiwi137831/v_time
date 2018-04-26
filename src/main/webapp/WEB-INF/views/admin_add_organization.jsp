<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Add Organization</title>
    
	<script src="<%=request.getContextPath()%>/js/admin_add_organization.js"></script> 
	
    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/ace/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/ace/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">V-Time Admin System</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
					<a href="/elec5619/v-time/login"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            
                            <!-- /input-group -->
                        </li>
                        <li>
                        	<a href="/elec5619/admin/organizationregister">Add Organization</a>
                        </li>
                        <li>
                        	<a href="/elec5619/admin/eventregister">Add Event</a>
                        </li>
                        
                        <li>
                            <a href="/elec5619/admin/searchorganization">Organizations List</a>
                        </li>

                        <li>
                            <a href="/elec5619/admin/searchevent">Events List</a>
                        </li>
                        <li>
                            <a href="/elec5619/backend/main">Volunteers List</a>
                        </li>
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Organization</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Please complete the new organization form below
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="inputEmail">Email:</label>
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword">Password:</label>
                                            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                        </div> 
                                        <div class="form-group">
                                            <label>Organization Name:</label>
                                            <input type="text" class="form-control" id="inputName" placeholder="Organization Name">
                                        </div> 
                                        <div class="form-group">
                                            <label>Telephone:</label>
                                            <input type="number" class="form-control" id="inputphone" placeholder="Telephone Number">
                                        </div> 
                                        <div class="form-group">
                                            <label>Address:</label>
                                            <input type="text" class="form-control" id="inputAddress" placeholder="Street Line">
                                        </div> 
                                        <div class="form-group">
                                            <label>Suburb:</label>
                                            <input type="text" class="form-control" id="inputSuburb" placeholder="Suburb">
                                        </div> 
                                        <div class="form-group">
                                            <label>State:</label>
											<select class="form-control" id="state">
												<option>NSW</option>
												<option>VIC</option>
												<option>QLD</option>
												<option>SA</option>
												<option>WA</option>
												<option>NT</option>
											</select>
										</div> 
										<div class="form-group">
                                            <label>PostCode:</label>
                                            <input type="number" class="form-control" id="inputPostCode" placeholder="PostCode">
                                        </div> 
										<div class="form-group">
                                            <label>Type:</label>
                                            <select class="form-control" id="type">
												<option>Individual</option>
												<option>Government</option>
												<option>Community</option>
												<option>Other</option>
											</select>
                                        </div>
                                        <div class="form-group">
                                            <label>Description:</label>
                                            <textarea class="form-control" rows="3" id="Description" placeholder="What's up!"></textarea>
                                        </div>     

                                        <button type="submit" class="btn btn-default" onClick="admin_register_org()">Submit</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>                               
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/ace/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/ace/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/ace/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/ace/dist/js/sb-admin-2.js"></script>

</body>

</html>

