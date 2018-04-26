<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Admin - Organization</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<%=request.getContextPath()%>/ace/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
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

              <div id="page-wrapper" >
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Organizations Management</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default" >
                        <div class="panel-heading">
                            Table of Registered Organizations
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            
                            <form class="form-horizontal" role="form">
						<h2 align="center">Organization Search</h2>
						<hr>

						<div class="form-group" style="width: 600px; MARGIN-RIGHT: auto; MARGIN-LEFT: auto;" >
							<form class="navbar-form navbar-left" role="search">

								<input id="e_search"
									style="float: left; width: 500px; height: 40px" type="text"
									class="form-control" placeholder="Search">

								<div class="btn-group" role="group" aria-label="..."
									style="float: left;">
									<button type="button" class="btn btn-default"
										onClick="post_search()">Search</button>
								</div>
							</form>
						</div>

						<hr>
						
						<div align="center">
						<table id="dataGrid1" class="table table-striped table-bordered table-hover" align="center" style="height:auto"></table>
						<div id ="pager1"></div>
						</div>

						<hr>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="button"
									style="margin-left: 12%;" onClick="modify()">
									<i class="icon-ok bigger-110" ></i> Edit
								</button>

								<button class="btn" type="reset" style="margin-left: 27%;">
									<i class="icon-undo bigger-110"></i> Reset
								</button>
							</div>

						</div>
					</form>

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
    
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/admin_organization_search.js"></script>

	<script type="text/javascript">
	window.jQuery
	|| document
			.write("<script src='assets/js/jquery-2.0.3.min.js'>"
					+ "<"+"/script>");
	</script>

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
	<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/i18n/grid.locale-en.js"></script>

</body>

</html>