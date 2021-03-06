<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Organization Modify</title>
<meta name="viewportq" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link
	href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/jquery.gritter.css" />

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/bootstrap-editable.css" />
<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.full.min.css" />
<link rel="stylesheet" href="assets/css/datepicker.css" />
<link rel="stylesheet" href="assets/css/ui.jqgrid.css" />
<!-- fonts -->

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

<!-- ace styles -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/ace.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/ace-rtl.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script
	src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> V-Time </small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-left" role="navigation">
				<ul class="nav ace-nav">


					<li class="light-blue" style="margin-left: 60px;"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <span>Home</span>
					</a></li>

					<li class="light-blue" style="margin-left: 40px;"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <span>Event</span>
					</a></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue" style="margin-right: 40px;"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <span>Profile</span>
					</a></li>



					<li class="light-blue" style="margin-right: 40px;"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <span>Messages</span>
							<span class="badge badge-success">5</span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-envelope-alt"></i>
								5 Messages</li>


						</ul></li>

					<li class="light-blue" style="margin-right: 20px;"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <span>Log
								out</span>
					</a></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<div class="main-content" style="margin-left: 0px;">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb" style="margin-top: 8px;">
						<li><a href="#">Organization</a></li>
						<li class="active">Profile</li>


					</ul>
					<!-- .breadcrumb -->


				</div>

				<div class="page-content">


					<div class="row">

						<!-- PAGE CONTENT BEGINS -->
						<div class="space-1">
							<h2 align="center">Add Event</h2>
						</div>

						<hr>

						<sf:form class="form-horizontal" role="form" method="POST"
							modelAttribute="event">
							<div class="form-group">

								<input type="hidden" id="event_id" value="" />
								<input type="hidden" id="status" value="" /> 
								
								<input type="hidden" id="organization_id" value="" /> <input type="hidden"
									id="exist_num" value="" />
									
								<label style="float: left; margin-left: 15%; width: 100px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Event Name:</label>

								<div style="float: left; width: 200px;" class="col-sm-4">
									<input class="form-control" value="" id="ename"type="text" placeholder="name" />
								</div>
								<label style="float: left; width: 100px;"
									class="col-sm-2 control-label" for="stime">Start time</label> 
								<input style="float: left;" id="stime" type="date"
									value="" /> 
									
								<label style="float: left; width: 100px;"
									class="col-sm-2 control-label" for="etime">End time</label> 
								<input style="float: left;" id="etime" type="date"
									value="" /> 
								<label style="float: left; width: 150px; margin-left: 8px"
									class="col-sm-2 control-label" for="volunteer_num">
									Volunteer number:</label>

								<div style="float: left; width: 100px;" class="col-sm-4">
									<input class="form-control" id="volunteer_num" type="text"
										placeholder="2000" value="" />
								</div>




							</div>
							<hr>

							<div class="form-group">

								<label style="float: left; margin-left: 15%; width: 150px;"
									class="col-sm-2 control-label" for="gender_limitation">
									gender limitation:</label> 
									
									<select style="float: left; width: 150px;"
									class="form-control" id="gender_limitation">
									<option id="1" value=male>male only</option>
									<option id="2" value="female">female</option>
									<option id="3" value="None">none</option>
								</select> <label style="float: left; width: 150px; margin-left: 8px"
									class="col-sm-2 control-label" for="age_limitation">
									age limitation:</label> 
									
									<select style="float: left; width: 150px;"
									class="form-control" id="age_limitation">
									<option id="1" value="1">18-21</option>
									<option id="2" value="2">22-25</option>
									<option id="3" value="3">26-29</option>
									<option id="4" value="4">30-35</option>
									<option id="5" value="5">Over35</option>

								</select> <label
									style="float: left; width: 180px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="job_limitation">
									Job requirement:</label>

								<div style="float: left; width: 200px;" class="col-sm-4">
									<input class="form-control" id="job_limitation" type="text"
										placeholder="job" value="" />
								</div>





							</div>
							<hr>
							<div class="form-group">
								<label
									style="float: left; margin-left: 16%; width: 100px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="event_address">Event
									Address:</label>

								<div style="float: left; width: 300px;" class="col-sm-4">
									<input class="form-control" id="event_address" type="text"
										placeholder="event address" value="" />
								</div>
								<label
									style="float: left; width: 80px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="event_suburb">
									Suburb:</label>

								<div style="float: left; width: 120px;" class="col-sm-4">
									<input class="form-control" id="event_suburb" type="text"
										placeholder="suburb" value="" />
								</div>

								<label
									style="float: left; width: 60px; padding: 0px; margin-top: 8px"
									for="event_state">State:</label> <select
									style="float: left; width: 150px;" class="form-control"
									id="event_state">
									<option id="1" value="NSW">NSW</option>
									<option id="2" value="MB">MB</option>

								</select> <label
									style="float: left; width: 60px; padding: 0px; margin-top: 8px; margin-left: 8px"
									class="col-sm-2 control-label" for="event_postcode">
									Postcode:</label>

								<div style="float: left; width: 80px;" class="col-sm-4">
									<input class="form-control" id="event_postcode" type="text"
										placeholder="2000" value="" />
								</div>




							</div>
							<hr>



							<div class="form-group">

								<label style="width: 150px; margin-left: 18%;" for="brief_inf">
									Biref information : </label>

								<div class="col-sm-9" style="margin-left: 18%;">
									<textarea style="width: 1000px; height: 100px" type="text"
										id="brief_inf" />
									</textarea>
								</div>


							</div>

							<hr>
							<div class="form-group">

								<label style="width: 100px; margin-left: 18%;" for="description">
									Description : </label>

								<div class="col-sm-9" style="margin-left: 18%;">
									<textarea style="width: 1000px; height: 150px" type="text"
										id="description" />
									</textarea>
								</div>


							</div>


						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="button" onClick="update()"
									style="margin-left: 12%;">
									<i class="icon-ok bigger-110"></i> Submit
								</button>


							</div>



						</div>

						</sf:form>







						<!-- /.col -->


						<!-- /.row -->
					</div>
					<!-- /.page-content -->


				</div>
				<!-- /.main-content -->


			</div>
			<!-- /.main-container-inner -->


		</div>
		<!-- /.main-container -->

		<!-- basic scripts -->





		<!--[if !IE]> -->

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

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

		<scriptsrc="<%=request.getContextPath()%>/ace/assets/js/jquery-ui-1.10.3.custom.min.js">
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
		<script src="<%=request.getContextPath()%>/resources/js/organization_modify.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>

		<script>
			var a = "${event.gender_limitation}";
			var b = "${event.age_limitation}";
			var c = "${event.event_state}";
			function display(optionID, selected_id) {
				var all_options = document.getElementById(selected_id).options;
				for (i = 0; i < all_options.length; i++) {
					if (all_options[i].value == optionID) {
						all_options[i].selected = true;
					}
				}
			};
			display(a, "gender_limitation");
			display(b, "age_limitation");

			display(c, "event_state");
		</script> <!-- inline scripts related to this page -->


		<div style="display: none">
			<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
				language='JavaScript' charset='gb2312'></script>
		</div>
</body>
</html>