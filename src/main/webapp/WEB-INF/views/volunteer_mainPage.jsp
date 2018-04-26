<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>volunteer_mainPage</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/select2.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/bootstrap-editable.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/ui.jqgrid.css" />

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/ace.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/component.css" />
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
		<script src="<%=request.getContextPath()%>/js/volunteer_mainPage.js"></script>
		<script src="<%=request.getContextPath()%>/js/modernizr.custom.js"></script>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		
		
</head>
<body>

		<%@ include file="volunteer_head.jsp"%>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				

				<div class="main-content" style=" margin-left:0px;">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb" style="margin-top:8px;">
							<li>
								
								<a href="" class="v_m" onClick="href_change_six()">Volunteer</a>
							</li>
							<li class="active">MainPage</li>

						
						</ul><!-- .breadcrumb -->
						
						<div class="nav-search" id="nav-search">
							
								<span class="input-icon">
									<input type="text" style="width:200px" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" onkeypress="if(event.keyCode==13){EnterPress();}"/>
									
								</span>
							
						</div><!-- #nav-search -->
						
					</div>

					<div class="page-content" style="padding-top:50px">
						

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<table id="grid-table"></table>

								<div id="grid-pager"></div>
								<script type="text/javascript">
									var $path_base = "/";//this will be used in gritter alerts containing images
								</script>
								
						
								
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				
			</div><!-- /.main-container-inner -->

			
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<div class="md-modal" id="modal-5" style="width:1300px;height:500px">
			<div class="md-content" style="height:500px">
				<h3>Event Detail</h3>
				<div class="main-container-inner">
				 <div class="main-content" style=" margin-left:0px;">
					<div class="page-content" style="padding-top:50px; width:100%">
						
						<div class="row" style="width:100%; margin-left:10px">
							<div class="col-xs-12" style="width:100%">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row" style="width:100%">
							
									<div class="col-sm-6" style="width:100%">
										<div class="tabbable" style="width:100%">
											<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" style="padding-bottom: 0px; height: 60px">
												<li class="active">
													<a data-toggle="tab" href="#description">Description</a>
												</li>

												<li>
													<a data-toggle="tab" href="#requirement">Requirement</a>
												</li>

											</ul>

											<div class="tab-content">
												<div id="description" class="tab-pane in active">
													<iframe class="e_des" src="" style="width:100%; height:400px"></iframe>
												</div>

												<div id="requirement" class="tab-pane">
													<iframe class="e_req" src="" style="width:100%; height:400px"></iframe>
												</div>

											</div>
										</div>
									</div><!-- /span -->
								</div><!-- /row -->

								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			 </div>
				<div>
					<button  class="v_apply" onclick="doApply()" style="width:150px;float:left;margin-left:400px;">Apply!</button>
					<button class="md-close" onclick="closeDetail()" style="width:150px;float:left;margin-left:100px">Close me!</button>
				</div>
			</div>
		</div>
		
		
		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script src="<%=request.getContextPath()%>/ace/assets/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/chosen.jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/moment.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/daterangepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.knob.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.autosize.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.maskedinput.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->

		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-elements.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/i18n/grid.locale-en.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		var current_event_id;
		var main_event;
		$.ajax({
			type : "POST",
			async : false,
			dataType : "json",
			url : "../volunteer_event/getEvents",
			data : {},
			success : function(msg) {
				main_event=msg.events;
			}
		});
		
		function showDetail(event_id){
			$("#modal-5").css("display","block");
			$(".e_des").attr("src","eventDescription?id="+event_id);
			$(".e_req").attr("src","eventRequirement?id="+event_id);
			current_event_id=event_id;
		}
		
		function closeDetail(){
			$("#modal-5").css("display","none");
		}
		/* var event_data = 
			[
				{event_id:"1",ename:"Desktop Computer",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"2",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"3",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"4",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"5",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"6",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"7",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"8",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"9",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"10",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"11",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"},
				{event_id:"12",ename:"Desktop",brief_inf:"note",stime:"2007-12-03",event_address_line:"FedEx", exist_num:"3"}
			 ]; */
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
				jQuery(grid_selector).jqGrid({
					//direction: "rtl",
					
					data: main_event,
					datatype: "local",
					height: 450,
					colNames:[' ', 'Event Name','Brief Information','Start Time', 'Location', 'Remaining position',' '],
					colModel:[
						{name:' ',index:'', width:50, fixed:true, sortable:false, resize:false
						},
						{name:'ename',index:'ename', width:80, sortable:true, editable: false},
						{name:'brief_inf',index:'brief_inf',width:150, sortable:true,editable:false},
						{name:'stime',index:'stime', width:80,sortable:true,editable: false},
						{name:'event_address',index:'event_address', width:80, sortable:true,editable: false},
						{name:'exist_num',index:'exist_num', width:50, sortable:true,editable: false},
						{name:'event_id',index:'event_id', width:100, sortable:true,editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
							var temp = "";
							temp += "<button onclick='showDetail("+cellvalue+")'>detail";
							temp += "</button>";
							return temp;
						}} 
					], 
					/* <button class="md-trigger" data-modal="modal-5">Create an new account</button> */
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector,
					
					//toppager: true,
					
					multiselect: false,
					//multikey: "ctrlKey",
			        multiboxonly: false,
			
					loadComplete : function() {
						var table = this;
						setTimeout(function(){
							styleCheckbox(table);
							
							updateActionIcons(table);
							updatePagerIcons(table);
							enableTooltips(table);
						}, 0);
					},
			
					
					caption: "Event List",
			
			
					autowidth: true
			
				});
			
				//enable search/filter toolbar
				//jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
			
					
				
					//navButtons
					jQuery(grid_selector).jqGrid('navGrid',pager_selector,
						{ 	//navbar options
							edit: false,
							editicon : 'icon-pencil blue',
							add: false,
							addicon : 'icon-plus-sign purple',
							del: false,
							delicon : 'icon-trash red',
							search: false,
							searchicon : 'icon-search orange',
							refresh: false,
							refreshicon : 'icon-refresh green',
							view: false,
							viewicon : 'icon-zoom-in grey',
						},
						{
							//edit record form
							//closeAfterEdit: true,
							recreateForm: true,
							beforeShowForm : function(e) {
								var form = $(e[0]);
								form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
								style_edit_form(form);
							}
						},
						{
							//new record form
							closeAfterAdd: true,
							recreateForm: true,
							viewPagerButtons: false,
							beforeShowForm : function(e) {
								var form = $(e[0]);
								form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
								style_edit_form(form);
							}
						},
						{
							//delete record form
							recreateForm: true,
							beforeShowForm : function(e) {
								var form = $(e[0]);
								if(form.data('styled')) return false;
								
								form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
								style_delete_form(form);
								
								form.data('styled', true);
							},
							onClick : function(e) {
								alert(1);
							}
						},
						{
							//search form
							recreateForm: true,
							afterShowSearch: function(e){
								var form = $(e[0]);
								form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
								style_search_form(form);
							},
							afterRedraw: function(){
								style_search_filters($(this));
							}
							,
							multipleSearch: true,
							/**
							multipleGroup:true,
							showQuery: true
							*/
						},
						{
							//view record form
							recreateForm: true,
							beforeShowForm: function(e){
								var form = $(e[0]);
								form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
							}
						}
					)
					
					function style_edit_form(form) {
						//enable datepicker on "sdate" field and switches for "stock" field
						form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})
							.end().find('input[name=stock]')
								  .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');
				
						//update buttons classes
						var buttons = form.next().find('.EditButton .fm-button');
						buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
						buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
						buttons.eq(1).prepend('<i class="icon-remove"></i>')
						
						buttons = form.next().find('.navButton a');
						buttons.find('.ui-icon').remove();
						buttons.eq(0).append('<i class="icon-chevron-left"></i>');
						buttons.eq(1).append('<i class="icon-chevron-right"></i>');		
					}
				
					function style_delete_form(form) {
						var buttons = form.next().find('.EditButton .fm-button');
						buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
						buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
						buttons.eq(1).prepend('<i class="icon-remove"></i>')
					}
					
					function style_search_filters(form) {
						form.find('.delete-rule').val('X');
						form.find('.add-rule').addClass('btn btn-xs btn-primary');
						form.find('.add-group').addClass('btn btn-xs btn-success');
						form.find('.delete-group').addClass('btn btn-xs btn-danger');
					}
					function style_search_form(form) {
						var dialog = form.closest('.ui-jqdialog');
						var buttons = dialog.find('.EditTable')
						buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');
						buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');
						buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');
					}
					
					
					
					//it causes some flicker when reloading or navigating grid
					//it may be possible to have some custom formatter to do this as the grid is being created to prevent this
					//or go back to default browser checkbox styles for the grid
					function styleCheckbox(table) {
					/**
						$(table).find('input:checkbox').addClass('ace')
						.wrap('<label />')
						.after('<span class="lbl align-top" />')
				
				
						$('.ui-jqgrid-labels th[id*="_cb"]:first-child')
						.find('input.cbox[type=checkbox]').addClass('ace')
						.wrap('<label />').after('<span class="lbl align-top" />');
					*/
					}
					
				
					//unlike navButtons icons, action icons in rows seem to be hard-coded
					//you can change them like this in here if you want
					function updateActionIcons(table) {
						/**
						var replacement = 
						{
							'ui-icon-pencil' : 'icon-pencil blue',
							'ui-icon-trash' : 'icon-trash red',
							'ui-icon-disk' : 'icon-ok green',
							'ui-icon-cancel' : 'icon-remove red'
						};
						$(table).find('.ui-pg-div span.ui-icon').each(function(){
							var icon = $(this);
							var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
							if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
						})
						*/
					}
					
					//replace icons with FontAwesome icons like above
					function updatePagerIcons(table) {
						var replacement = 
						{
							'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
							'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
							'ui-icon-seek-next' : 'icon-angle-right bigger-140',
							'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
						};
						$('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
							var icon = $(this);
							var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
							
							if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
						})
					}
				
					function enableTooltips(table) {
						$('.navtable .ui-pg-button').tooltip({container:'body'});
						$(table).find('.ui-pg-div').tooltip({container:'body'});
					}
				
					//var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');
			
	
			
			});
			
		</script>
	
</body>
</html>