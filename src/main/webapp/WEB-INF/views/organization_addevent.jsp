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
							<h2 align="center">ADD Event</h2>
						</div>

						<hr>
						
						<sf:form class="form-horizontal" role="form" method="POST"
							modelAttribute="Organization">
							
								
								<input type="hidden" id="oid" value="${Organization.id}" />
							</sf:form>
						<sf:form class="form-horizontal" role="form" method="POST"
							modelAttribute="event">
							<div class="form-group">

								<input type="hidden" id="event_id" value="${event.event_id}" />
								<input type="hidden" id="status"   value="${event.status}" /> 
								
								<input type="hidden" id="organization_id" value="${event.organization_id}" /> 
								<input type="hidden" id="exist_num" value="${event.exist_num}" />
									
								<label style="float: left; margin-left: 15%; width: 100px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="ename">Event Name:</label>

								<div style="float: left; width: 200px;" class="col-sm-4">
									<input class="form-control" value="${event.ename}" id="ename"type="text" placeholder="name" />
								</div>
								<label style="float: left; width: 100px;"
									class="col-sm-2 control-label" for="stime">Start time</label> 
								<input style="float: left;" id="stime" type="date"
									value="${event.stime}" /> 
									
								<label style="float: left; width: 100px;"
									class="col-sm-2 control-label" for="etime">End time</label> 
								<input style="float: left;" id="etime" type="date"
									value="${event.etime}" /> 
								<label style="float: left; width: 150px; margin-left: 8px"
									class="col-sm-2 control-label" for="volunteer_num">
									Volunteer number:</label>

								<div style="float: left; width: 100px;" class="col-sm-4">
									<input class="form-control" id="volunteer_num" type="text"
										placeholder="2000" value="${event.volunteer_num}" />
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
										placeholder="job" value="${event.job_limitation}" />
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
										placeholder="event address" value="${event.event_address}" />
								</div>
								<label
									style="float: left; width: 80px; padding: 0px; margin-top: 8px"
									class="col-sm-2 control-label" for="event_suburb">
									Suburb:</label>

								<div style="float: left; width: 120px;" class="col-sm-4">
									<input class="form-control" id="event_suburb" type="text"
										placeholder="suburb" value="${event.event_suburb}" />
								</div>

								<label
									style="float: left; width: 60px; padding: 0px; margin-top: 8px"
									for="event_state">State:</label> <select
									style="float: left; width: 150px;" class="form-control"
									id="event_state">
									<option id="1" value="NSW">NSW</option>
									<option id="2" value="NT ">NT</option>
									<option id="3" value="SA">SA</option>
									<option id="4" value="VIC">VIC</option>
									<option id="5" value="QLD ">QLD </option>
									<option id="6" value="WA ">WA </option>
									
									

								</select> <label
									style="float: left; width: 60px; padding: 0px; margin-top: 8px; margin-left: 8px"
									class="col-sm-2 control-label" for="event_postcode">
									Postcode:</label>

								<div style="float: left; width: 80px;" class="col-sm-4">
									<input class="form-control" id="event_postcode" type="text"
										placeholder="2000" value="${event.event_postcode}" />
								</div>




							</div>
							<hr>



							<div class="form-group">

								<label style="width: 150px; margin-left: 18%;" for="brief_inf">
									Biref information : </label>

								<div class="col-sm-9" style="margin-left: 18%;">
									<textarea style="width: 1000px; height: 100px" type="text"
										id="brief_inf" />${event.brief_inf}
									</textarea>
								</div>


							</div>

							<hr>
							<div class="form-group">

								<label style="width: 100px; margin-left: 18%;" for="description">
									Description : </label>

								<div class="col-sm-9" style="margin-left: 18%;">
									<textarea style="width: 1000px; height: 150px" type="text"
										id="description" />${event.description}
									</textarea>
								</div>


							</div>


						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="button" onClick="update()"
									style="margin-left: 12%;">
									<i class="icon-ok bigger-110"></i> Create
								</button>

								<button class="btn" type="reset" style="margin-left: 27%;" Onclick="home()">
									<i class="icon-undo bigger-110"></i> Return
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
		<script src="<%=request.getContextPath()%>/js/organization_modify.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>

		<script>
		

	

		
		
		var event;
		var event_id,ename,event_address,event_suburb,brief_inf,event_postcode,stime,etime,volunteer_num;
		var description,status,organization_id,age_limitation,exist_num,event_state;
		var message,signal;
		var job_limitation,gender_limitation;
		var age,gender;
		var gender_index,age_index;

		function update(){
			var request = new Object();  
		    request = GetRequest();  

		    event_id=$("#event_id").val();
			if(event_id==null){
				event_id="";
			}
			
			ename=$("#ename").val();
			if(ename==null){
				ename="";
			}
			
			event_address=$("#event_address").val();
			if(event_address==null){
				event_address="";
			}
			
			event_suburb=$("#event_suburb").val();
			if(event_suburb==null){
				event_suburb="";
			}
			
			brief_inf=$("#brief_inf").val();
			if(brief_inf==null){
				brief_inf="";
			}
			
			event_postcode=$("#event_postcode").val();
			if(event_postcode==null){
				event_postcode="";
			}	
			
			volunteer_num=$("#volunteer_num").val();
			if(volunteer_num==null){
				volunteer_num="";
			}	
			
			description=$("#description").val();
			if(description==null){
				description="";
			}	
			
			status=$("#status").val();
			if(status==null){
				status="";
			}	
			
			organization_id=$("#organization_id").val();
			if(organization_id==null){
				organization_id="";
			}
			

			job_limitation=$("#job_limitation").val();
			if(job_limitation==null){
				job_limitation="";
			}
			
			
			//gender=document.getElementById('gender_limitation');
			//gender_index=gender.selectedIndex;
			gender_limitation=$("#gender_limitation").val();
			if(gender_limitation==null){
				gender_limitation="";
			}
			
			stime=$("#stime").val();
			if(stime==null){
				stime="";
			}
			
			etime=$("#etime").val();
			if(etime==null){
				etime="";
			}

			
			age_limitation=$("#age_limitation").val();
			if(age_limitation==null){
				age_limitation="";
			}
			
			
			exist_num=$("#exist_num").val();
			if(exist_num==null){
				exist_num="";
			}
			
			event_state=$("#event_state").val();
			if(event_state==null){
				event_state="";
			}
			updateEvent();
			if(message=="success"){
				alert("success");
			}else{
				alert("success");
			}
		}

		function logout(){
			
			
			
		    var url = 'http://localhost:8080/elec5619/v-time/login'; 
		    window.location.href = url;  
			
		}

		function home(){
			var val= $("#organization_id").val();
			
		    var url = 'http://localhost:8080/elec5619/organization/search/'+val;  
		    window.location.href = url;  
		}

		function updateEvent(){
			$.ajax({
				type : "POST",
				async : false,
				dataType : "json",
				url : "../organization/addevent",
				data : {event_id:event_id,
						ename:ename,
						event_address:event_address,
						event_suburb:event_suburb,
						brief_inf:brief_inf,
						event_postcode:event_postcode,
						stime:stime,
						etime:etime,
						volunteer_num:volunteer_num,
						description:description,
						status:status,
						organization_id:organization_id,
						job_limitation:job_limitation,
						gender_limitation:gender_limitation,
						age_limitation:age_limitation,
						exist_num:exist_num,
						event_state:event_state,
						
					},
				success : function(msg) {
					alert("success add event")
					var val= $("#organization_id").val();
				    var url = 'http://localhost:8080/elec5619/search/'+val;  
					  window.location.href = url;  
					
				}
			});
		}
		
		
		
		
		function returnpage(){
			
			
			
			
			
		}
		</script> <!-- inline scripts related to this page -->


		<div style="display: none">
		
		</div>
</body>
</html>