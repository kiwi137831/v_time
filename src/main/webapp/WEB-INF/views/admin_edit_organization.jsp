<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Edit Organization</title>
	
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
<script
	src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>

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
                    <h1 class="page-header">Edit Organization</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Please complete the editing organization operation below
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <sf:form role="form" method="POST" modelAttribute="organization">
								
								<input type="hidden" id="id" value="${organization.id}" />
								<div class="form-group">	
								<label>Organization Name:</label>
								<input class="form-control" value="${organization.name}" id="name"type="text" placeholder="name" />
								</div>
								
								<div class="form-group">	
								<label>Organization Email:</label>
								<input class="form-control" value="${organization.email}" id="email"type="text" placeholder="email" />
								</div>
								
								<div class="form-group">	
								<label>Organization Password:</label>
								<input class="form-control" value="${organization.password}" id="password"type="text" placeholder="password" />
								</div>
								
								<hr>
								
								<div class="form-group">	
								<label>Phone:</label>
								<input class="form-control" value="${organization.phone}" id="phone"type="text" placeholder="phone" />
								</div>
								
								<div class="form-group">	
								<label>Address:</label>
								<input class="form-control" value="${organization.address}" id="address"type="text" placeholder="address" />
								</div>
								
								<div class="form-group">	
								<label>Suburb:</label>
								<input class="form-control" value="${organization.suburb}" id="suburb"type="text" placeholder="suburb" />
								</div>
								
								<div class="form-group">
								<label>State:</label> 
								<select class="form-control" id="state">
									<option id="1" value="NSW">NSW</option>
									<option id="2" value="MB">VIC</option>
									<option id="3" value="MB">QLD</option>
									<option id="4" value="MB">SA</option>
									<option id="5" value="MB">WA</option>
									<option id="6" value="MB">NT</option>
								</select> 
								</div>
								
								<div class="form-group">	
								<label>PostCode:</label>
								<input class="form-control" value="${organization.postcode}" id="postcode"type="text" placeholder="postcode" />
								</div>
								
							<hr>
							
										<div class="form-group">
                                            <label>Type:</label>
                                            <select class="form-control" id="type">
												<option id="1" value=individual>Individual</option>
												<option id="2" value=government>Government</option>
												<option id="3" value=community>Community</option>
												<option id="4" value=other>Other</option>
											</select>
                                        </div>							

							<div class="form-group">

								<label>Description : </label>

									<textarea class="form-control" rows="3" id="description" />${organization.description} </textarea>

							</div>

								<button class="btn btn-default"  type="button" onClick="update()">Submit</button>

								<button class="btn btn-default"  type="reset" >Reset</button>



						</sf:form>
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
<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		

		<script type="text/javascript">
			if ("ontouchend" in document)
				document
						.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
								+ "<"+"/script>");
		</script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/typeahead-bs2.min.js"></script>

		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery-ui-1.10.3.custom.min.js">
		</script> <script
			src="<%=request.getContextPath()%>/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/chosen.jquery.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/date-time/moment.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/date-time/daterangepicker.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/bootstrap-colorpicker.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/jquery.knob.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/jquery.autosize.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/jquery.maskedinput.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/ace/assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts --> <script
			src="<%=request.getContextPath()%>/ace/assets/js/ace-elements.min.js"></script>
		<script src="<%=request.getContextPath()%>/js/admin_organization_modify.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>

		<script>
			var a = "${organization.state}";
			var b = "${organization.type}";
			function display(optionID, selected_id) {
				var all_options = document.getElementById(selected_id).options;
				for (i = 0; i < all_options.length; i++) {
					if (all_options[i].value == optionID) {
						all_options[i].selected = true;
					}
				}
			};
			display(a, "state");
			display(b, "type");

		</script> <!-- inline scripts related to this page -->


		<div style="display: none">
			<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
				language='JavaScript' charset='gb2312'></script>
		</div>
</body>

</html>

