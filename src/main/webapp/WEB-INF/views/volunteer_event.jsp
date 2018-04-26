<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>volunteer_event</title>
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

		<style>
			.spinner-preview {
				width:100px;
				height:100px;
				text-align:center;
				margin-top:60px;
			}
			
			.dropdown-preview {
				margin:0 5px;
				display:inline-block;
			}
			.dropdown-preview  > .dropdown-menu {
				display: block;
				position: static;
				margin-bottom: 5px;
			}
		</style>

		<!-- ace settings handler -->

		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
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
								
								<a href="" class="v_e" onClick="href_change_five()">Volunteer</a>
							</li>
							<li class="active">Event</li>

						
						</ul><!-- .breadcrumb -->
						
						
					</div>

					<div class="page-content" style="padding-top:50px; width:100%">
						
						<div class="row" style="width:100%; margin-left:10px">
							<div class="col-xs-12" style="width:100%">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row" style="width:100%">
							
									<div class="col-sm-6" style="width:100%">
										<div class="tabbable" style="width:100%">
											<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
												<li class="active">
													<a data-toggle="tab" href="#active_event">Active Event</a>
												</li>

												<li>
													<a data-toggle="tab" href="#history_event">History Event</a>
												</li>

											</ul>

											<div class="tab-content">
												<div id="active_event" class="tab-pane in active">
													<table id="grid-table-active"></table>

								                    <div id="grid-pager-active"></div>
												</div>

												<div id="history_event" class="tab-pane">
													<table id="grid-table-history"></table>

								                    <div id="grid-pager-history"></div>
												</div>

											</div>
										</div>
									</div><!-- /span -->
								</div><!-- /row -->

								<script type="text/javascript">
									var $path_assets = "assets";//this will be used in gritter alerts containing images
								</script>

								<!-- PAGE CONTENT ENDS -->
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

								<script type="text/javascript">
									var $path_assets = "assets";//this will be used in gritter alerts containing images
								</script>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			 </div>
				<div>
					
					<button class="md-close" onclick="closeDetail()" style="width:150px;float:left;margin-left:45%">Close me!</button>
				</div>
			</div>
		</div>
		<script src="<%=request.getContextPath()%>/js/classie.js"></script>
		<script src="<%=request.getContextPath()%>/js/modalEffects.js"></script>
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="<%=request.getContextPath()%>/js/cssParser.js"></script>
		<script src="<%=request.getContextPath()%>/js/css-filters-polyfill.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jquery.easy-pie-chart.min.js"></script>
		

		<!-- ace scripts -->

		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-elements.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/jqGrid/i18n/grid.locale-en.js"></script>
		<script src="<%=request.getContextPath()%>/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		    var active_event,his_event;
		    var ename, brief;
		    var request = new Object();  
		    request = GetRequest();  
			var id=request['id'] ;
		    $.ajax({
				type : "POST",
				async : false,
				dataType : "json",
				url : "../volunteer_event/getActiveEvents",
				data : {volunteer_id:id},
				success : function(msg) {
					active_event=msg.events;
				}
			});
		    
		    $.ajax({
				type : "POST",
				async : false,
				dataType : "json",
				url : "../volunteer_event/getHistoryEvents",
				data : {volunteer_id:id},
				success : function(msg) {
					his_event=msg.events;
				}
			});
		    
		    function getEname(event_id){
		    	$.ajax({
					type : "POST",
					async : false,
					dataType : "json",
					url : "../volunteer_event/getEventById",
					data : {event_id:event_id},
					success : function(msg) {
						ename=msg.ename;
						brief=msg.brief_inf;
					}
		    	});
		    }
		    
		    function showDetail(event_id){
				$("#modal-5").css("display","block");
				$(".e_des").attr("src","eventDescription?id="+event_id);
				$(".e_req").attr("src","eventRequirement?id="+event_id);
			}
			
			function closeDetail(){
				$("#modal-5").css("display","none");
			}
			
		   /*  active_event=[
		  				{ve_id:"1",ename:"Desktop Computer",applytm:"2007-12-03",status:"0", event_id:"1"},
						{ve_id:"2",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"2"},
						{ve_id:"3",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"3"},
						{ve_id:"4",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"4"},
						{ve_id:"5",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"5"},
						{ve_id:"6",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"6"},
						{ve_id:"7",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"7"},
						{ve_id:"8",ename:"Desktop",applytm:"2007-12-03",status:"0", event_id:"8"},
						{ve_id:"9",ename:"Desktop",applytm:"2007-12-03",status:"1", event_id:"9"},
						{ve_id:"10",ename:"Desktop",applytm:"2007-12-03",status:"1", event_id:"10"},
						{ve_id:"11",ename:"Desktop",applytm:"2007-12-03",status:"1", event_id:"11"},
						{ve_id:"12",ename:"Desktop",applytm:"2007-12-03",status:"1", event_id:"12"}
					 ]; 
		     */
		    /* his_event=[
		  				{ve_id:"1",ename:"Desktop Computer",Comment:"ssafaf",Rating:"1"},
						{ve_id:"2",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"3",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"4",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"5",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"6",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"7",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"8",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"9",ename:"Desktop",Comment:"ssafaf",Rating:"1"},
						{ve_id:"10",ename:"Desktop",Comment:"ssafaf",Rating:"2"},
						{ve_id:"11",ename:"Desktop",Comment:"ssafaf",Rating:"2"},
						{ve_id:"12",ename:"Desktop",Comment:"ssafaf",Rating:"2"}
					 ];  */
		    
			jQuery(function($) {
				var grid_selector_active = "#grid-table-active";
				var pager_selector_active = "#grid-pager-active";
				var grid_selector_history = "#grid-table-history";
				var pager_selector_history = "#grid-pager-history";
				jQuery(grid_selector_active).jqGrid({
					//direction: "rtl",
					
					data: active_event,
					datatype: "local",
					height: 450,
					width:1550,
					colNames:[' ', 'Event Name','Apply Time','Detail', 'Status'],
					colModel:[
						{name:' ',index:'', width:50, fixed:true, sortable:false, resize:false
						},
						{name:'event_id',index:'event_id', width:80, sortable:true, editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
								var temp = "";
								getEname(cellvalue);
								temp +=ename ;
								return temp;
							}
						},
						{name:'applytm',index:'applytm',width:80, sortable:true,editable:false},
						{name:'event_id',index:'event_id', width:100, sortable:true,editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
								var temp = "";
								temp += "<button onclick='showDetail("+cellvalue+")'>detail";
								temp += "</button>";
								return temp;
						}} ,
						
						{name:'status',index:'status', width:100, sortable:true,editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
							var temp = "";
							if(cellvalue=='0'){
								temp += "wait";
							}else{
								temp += "pass";
							}
							
							return temp;
						}} 
					], 
			
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector_active,
					
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
			
					caption: "Active Event",
					autowidth: false
			
				});
				
				jQuery(grid_selector_active).jqGrid('navGrid',pager_selector_active,
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
					
					jQuery(grid_selector_history).jqGrid({
					//direction: "rtl",
					
					data: his_event,
					datatype: "local",
					height: 450,
					width:1550,
					colNames:[' ', 'Event Name','Brief Information',''],
					colModel:[
						{name:' ',index:'', width:50, fixed:true, sortable:false, resize:false
						},
						{name:'event_id',index:'event_id', width:80, sortable:true, editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
								var temp = "";
								getEname(cellvalue);
								temp +=ename ;
								return temp;
							}
						},
						{name:'event_id',index:'event_id', width:150, sortable:true, editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
								var temp = "";
								getEname(cellvalue);
								temp +=brief ;
								return temp;
							}
						},
						{name:'event_id',index:'event_id', width:100, sortable:true,editable: false,align:'center',
							formatter:function(cellvalue, options, rowObject){
								var temp = "";
								temp += "<button onclick='showDetail("+cellvalue+")'>detail";
								temp += "</button>";
								return temp;
						}} 
					], 
			
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector_history,
					
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
			
					caption: "History Event",
					autowidth: false
			
				});
				
				
				jQuery(grid_selector_history).jqGrid('navGrid',pager_selector_history,
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
				
				$.fn.spin = function(opts) {
					this.each(function() {
					  var $this = $(this),
						  data = $this.data();
			
					  if (data.spinner) {
						data.spinner.stop();
						delete data.spinner;
					  }
					  if (opts !== false) {
						data.spinner = new Spinner($.extend({color: $this.css('color')}, opts)).spin(this);
					  }
					});
					return this;
				};
			
				function spinner_update() {
					var opts = {};
					$('#spinner-opts input[type=text]').each(function() {
						opts[this.name] = parseFloat(this.value);
					});
					$('#spinner-preview').spin(opts);
				}
			
			
			
				$('#id-pills-stacked').removeAttr('checked').on('click', function(){
					$('.nav-pills').toggleClass('nav-stacked');
				});
			
			
			});
		</script>
	
</body>
</html>
