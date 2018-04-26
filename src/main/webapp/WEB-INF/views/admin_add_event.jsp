<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Add Event</title>
    
	<script src="<%=request.getContextPath()%>/js/admin_add_event.js"></script> 
	
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
                    <h1 class="page-header">Add New Event</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Please complete the new event form below
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="inputEname">Name of Event:</label>
                                            <input type="text" class="form-control" id="inputEname" placeholder="Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Address:</label>
                                            <input type="text" class="form-control" id="inputEvent_address" placeholder="Streer Line">
                                        </div> 
                                        <div class="form-group">
                                            <label>Suburb:</label>
                                            <input type="text" class="form-control" id="inputEvent_suburb" placeholder="Suburb">
                                        </div> 
                                        <div class="form-group">
                                            <label>State:</label>
											<select class="form-control" id="Event_state">
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
                                            <input type="number" class="form-control" id="inputEvent_postcode" placeholder="PostCode">
                                        </div> 
                                        <div class="form-group">
                                            <label>Start Time:</label>
                                            <input type="date" class="form-control" id="inputStime" placeholder="Event Start Time">
                                        </div> 
                                        <div class="form-group">
                                            <label>End Time:</label>
                                            <input type="date" class="form-control" id="inputEtime" placeholder="Event End Time">
                                        </div> 
<!-- 										<div class="form-group">
                                            <label>Status:</label>
                                            <select class="form-control" id="status">
												<option>0</option>
												<option>1</option>
												<option>2</option>
											</select>
                                        </div> -->
                                        <div class="form-group">
                                            <label>Job limination:</label>
                                            <input type="text" class="form-control" id="inputJob_limitation" placeholder="Please state job limiantion">
                                        </div>
                                        <div class="form-group">
                                            <label>Type:</label>
                                            <select class="form-control" id="age_limitation">
									<option id="1" value="1">18-21</option>
									<option id="2" value="2">22-25</option>
									<option id="3" value="3">26-29</option>
									<option id="4" value="4">30-35</option>
									<option id="5" value="5">Over35</option>
											</select>
                                        </div> 
                                        <div class="form-group">
                                            <label>Existing Volunteer Numbers:</label>
                                            <input type="text" class="form-control" id="inputExist_num" placeholder="Existing Volunteer Numbers">
                                        </div> 
                                        <div class="form-group">
                                            <label>Description:</label>
                                            <textarea class="form-control" rows="3" id="Description" placeholder="What's up!"></textarea>
                                        </div>     

                                        <button type="submit" class="btn btn-default" onClick="admin_register_eve()">Submit</button>
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

