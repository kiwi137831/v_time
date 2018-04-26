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
						data-toggle="dropdown" class="dropdown-toggle" href="#" Onclick="home()"> <span>Home</span>
					</a></li>

				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
		
				

					<li class="light-blue" style="margin-right: 20px;"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#" Onclick="logout()"> <span>Log
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
							<h2 align="center">Volunteer information</h2>
						</div>

						<hr>

						<sf:form class="form-horizontal" role="form" method="POST"
							modelAttribute="Organization">
							<input type="hidden" id="oid" value="${Organization.id}" />
							
							</sf:form>



						
						<sf:form class="form-horizontal" role="form" method="POST"
							modelAttribute="Volunteer">
							<div class="form-group">

								<input type="hidden" id="event_id" value="${event.event_id}" />
								<input type="hidden" id="status"   value="${event.status}" /> 
								
						
									
								<label style="float: left; margin-left: 20%; width: 200px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Volunteer Name:</label>

								<div style="float: left;left; width: 200px;" class="col-sm-4">
									<input class="form-control" value="${Volunteer.vname}" id="name"type="text"   />
								</div>
								
								<label style="float: left;margin-left: 14%; width: 100px;"
									
									class="col-sm-2 control-label" for="stime">Gender :</label> 
									<div style="float: left;left; width: 200px;" class="col-sm-4">
								<input class="form-control"  style="float: left;" id="gender" 
									value="${Volunteer.gender}"  /> 
							
									</div>	
							</div>
							<hr>

							<div class="form-group">

								
								<label style="float: left; margin-left: 20%; width: 200px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Job:</label>

								<div style="float: left; width: 100px;" class="col-sm-4">
									<input class="form-control" id="job" type="text"
										placeholder="2000" value="${Volunteer.job}" />
								</div>
								
								<label style="float: left; margin-left: 14.1%; width: 200px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Email:</label>


								<div style="float: left; width: 250px;" class="col-sm-4">
									<input class="form-control" id="email" type="text"
										placeholder="2000" value="${Volunteer.vemail}" />
								</div>
								





							</div>
							<hr>
							<div class="form-group">
								<label style="float: left; margin-left: 20%; width: 200px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Age:</label>


								<div style="float: left; width: 100px;" class="col-sm-4">
									<input class="form-control" id="age" type="text"
										placeholder="2000" value="${Volunteer.age}" />
								</div>

								<label style="float: left; margin-left: 14%; width: 200px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Phone:</label>


								<div style="float: left; width: 100px;" class="col-sm-4">
									<input class="form-control" id="vphone" type="text"
										placeholder="2000" value="${Volunteer.vphone}" />
								</div>



							</div>
							<hr>





						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								

								<button class="btn" type="reset" style="margin-left: 27%;" Onclick="returnpage()">
									<i class="icon-undo bigger-110" ></i> Return
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
		<script src="<%=request.getContextPath()%>/js/Organization_volunteer_detials.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>

		<script>
		
		
			
					if ($("#gender").val()=="1") {
						$("#gender").val("Male");
						}
					else 
						$("#gender").val("female");
		
		</script> <!-- inline scripts related to this page -->


		<div style="display: none">
		
		</div>
</body>
</html>