<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>volunteer_profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/datepicker.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/ace/assets/css/ui.jqgrid.css" />

<!-- fonts -->



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

					<form class="form-horizontal" role="form" method="POST"
						modelAttribute=Organization>
						<h2 align="center">${Organization.name}</h2>
						
						<hr>
						<div class="form-group">
						
						<label style="float: left; margin-left: 15%; width: 150px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="email">Organization email:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.email}" id="email"type="text" placeholder="name" />
						</div>
						
						<label style="float: left; width: 100px;padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="address">Address:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.address}" id="address"type="text" placeholder="name" />
						</div>
						
						<label style="float: left; width: 100px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="suburb">Suburb:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.suburb}" id="suburb"type="text" placeholder="name" />
						</div>						
						
						<label style="float: left; width: 80px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="state">State:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.state}" id="state"type="text" placeholder="name" />
						</div>						
				
						
						</div>
						
						<hr>
						<div class="form-group">
						
						<label style="float: left; margin-left: 15%;width: 80px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="postcode">Postcode:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.postcode}" id="postcode"type="text" placeholder="name" />
						</div>		
						
											
						<label style="float: left; width: 90px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="type">Type:</label>
						<div style="float: left; width: 200px;" class="col-sm-4">
							<input class="form-control" value="${Organization.type}" id="type"type="text" placeholder="name" />
						</div>	
						
						
						<label style="float: left; width: 120px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="telephone">Telephone:</label>
						<div style="float: left; width: 180px;" class="col-sm-4">
							<input class="form-control" value="${Organization.phone}" id="telephone"type="text" placeholder="name" />
						</div>	
						
						</div>
						
					
						<input type="hidden" id="description" value="${Organization.description}" />
						<input type="hidden" id="traget" value="${Organization.target}" />
						<input type="hidden"  id="organization_password" value="${Organization.password}" />
						<input type="hidden" id="identifyFile" value="${Organization.identifyfile}" />
						<input type="hidden" id="organization_id" value="${Organization.id}" />
						
			
							
					


						<hr>

						<div align="center">
							<div class="form-group">
								<form class="navbar-form navbar-left" role="search">


									<input id="v_search"
										style="float: left; margin-left: 27%; width: 630px; height: 40px"
										type="text" class="form-control" placeholder="Search">

									<div class="btn-group" role="group" aria-label="..."
										style="float: left;">
										<button type="button" class="btn btn-default"
											onClick="post_search()">Submit</button>
										<button type="button" class="btn btn-default"  onClick="reset()">Reset</button>

									</div>
								</form>
							</div>



							<table id="dataGrid" align="center"></table>
							<div id="pager"></div>
						</div>

						<hr>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="button"
									style="margin-left: 12%;" onClick="apply()">
									<i class="icon-ok bigger-110"></i> Submit
								</button>

								<button class="btn" type="reset" style="margin-left: 27%;" onClick="check()">
									<i class="icon-undo bigger-110"></i> Reset
								</button>
							</div>


						</div>

						<hr>

					</form>

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
	<script src="<%=request.getContextPath()%>/js/volunteer_apply.js"></script>
	
	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->



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

	<script
		src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/i18n/grid.locale-en.js"></script>

	<!-- ace scripts -->

	<script
		src="<%=request.getContextPath()%>/ace/assets/js/ace-elements.min.js"></script>
	<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>


	<!-- inline scripts related to this page -->


	<div style="display: none">
		
	</div>
</body>
</html>
