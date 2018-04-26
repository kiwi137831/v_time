<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Volunteer App Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=path%>/backend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=path%>/backend/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=path%>/backend/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=path%>/backend/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
		<img alt="Help other people to be a better person" src="top_placeholder.png" width="100%"/>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                <a class="navbar-brand">Volunteer App Admin</a>
             
            </div>
            <!-- /.navbar-header -->
			<ul class="nav navbar-top-links navbar-left">
				<li>
                	<a href="/elec5619/backend/main"><i class="fa fa-userlist fa-fw"></i> <font size="3" color="black">HomePage</font></a>
                </li>		 
             </ul>
               <ul class="nav navbar-top-links navbar-right">
					<li>
						<a class="navbar-big"><c:out value="${user.username}"/></a>
					</li>
					<li>
						<a class="btn btn-success btn-lg" href="/elec5619/v-time/login" type="button">logout</a>
					</li>
					
                </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
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
            </div>
            <!-- /.navbar-static-side -->
            <!--  -->
            <!--  -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Volunteer List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <div class="row">
                <div class="col-lg-15">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> All Volunteers

                            <form:form id="searchform" class="form-horizontal" commandName="volunteer" action="/elec5619/backend/search" method="post">
                        		<div class="input-group custom-search-form">
                                <form:input type="text" class="form-control" placeholder="Search by username" path="vname"/>
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button" onclick="document.getElementById('searchform').submit()">
                                    <i class="fa fa-search"></i>
                                </button>
                            	</span>
                        		</div>
                            </form:form>

			<!-- for fail login -->
			<c:if test="${not empty search_fail}">
				<tr>
					<td>
						<div class="alert alert-search-fail">
							<strong>${search_fail}</strong>
						</div>
					</td>
				</tr>
				<c:remove var="search_fail" />
			</c:if>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">

			<c:if test="${not empty user_update}">
				<tr>
					<td>
						<div class="alert alert-user-update" style="text-align:center">
							<strong>Update status: </strong>${user_update}
						</div>
					</td>
				</tr>
				<c:remove var="user_update" />
			</c:if>

			<c:if test="${not empty user_delete}">
				<tr>
					<td>
						<div class="alert alert-user-delete" style="text-align:center">
							<strong>Delete status: </strong>${user_delete}
						</div>
					</td>
				</tr>
				<c:remove var="user_delete" />
			</c:if>

			<c:if test="${not empty user_add}">
				<tr>
					<td>
						<div class="alert alert-user-add" style="text-align:center">
							<strong>Add status: </strong>${user_add}
						</div>
					</td>
				</tr>
				<c:remove var="user_add" />
			</c:if>
					
							<table class="table table-bordered table-hover" style="table-layout:fixed" width="50%">
                                            <thead>
                                                <tr>
         											<td style="font-weight:bold;">VolunteerName</td>
         											<td style="font-weight:bold;">Password</td>
         											<td style="font-weight:bold;">Gender</td>
         											<td style="font-weight:bold;">Age</td>
         											<td style="font-weight:bold;">Job</td>
         											<td style="font-weight:bold;">IdentifyFile</td>
         											<td style="font-weight:bold;">Phone</td>
         											<td style="font-weight:bold;"></td>
                                                </tr>
                                            </thead>
                                            <tbody>
												<form:form id="newform" commandName="volunteer" action="/elec5619/backend/modify" method="post" onsubmit="return validateadd()">
										      		<tr>
										      			<td><form:input path="vname" placeholder="Input username" size="18"/></td>
										         		<td><form:input path="vpassword" placeholder="Input password" size="18"/></td>
										         		<td><form:input path="gender" placeholder="Input gender(F/M)" size="18"/></td>
										         		<td><form:input path="age" placeholder="Input age" size="18"/></td>
										         		<td><form:input path="job" placeholder="Input password" size="18"/></td>
										         		<td><form:input path="videntifyfile" placeholder="Upload File" size="18"/></td>
										         		<td><form:input path="vphone" placeholder="Input phone" size="18"/></td>
										         		<td><input class="btn btn-success" name="action" type="submit" value="Add Volunteer"/></td>
										      		</tr>
										      	</form:form>
                                            </tbody>
                                        </table>

                               <table class="table table-bordered table-hover" style="table-layout:fixed">
                                            <thead>
                                                <tr>
                                                    <!-- <td style="font-weight:bold;">Id</td> -->
         											<td style="font-weight:bold;">Username</td>
         											<td style="font-weight:bold;">Password</td>
         											<td style="font-weight:bold;">Gender</td>
         											<td style="font-weight:bold;">Age</td>
         											<td style="font-weight:bold;">Job</td>
         											<td style="font-weight:bold;">Identifyfile</td>
         											<td style="font-weight:bold;">Phone</td>
         											<td style="font-weight:bold;"></td>
         											<td style="font-weight:bold;"></td>
                                                </tr>
                                            </thead>
                                            <tbody>
										   		<c:if test="${fn:length(vlist) > 0}">
												 	<c:forEach var="item" items="${vlist}" varStatus="status">
												 		<tbody>
												 		<form:form id="listform" commandName="volunteer" action="/elec5619/backend/modify" method="post" onsubmit="return validatemodify()">
										      				<tr>
										      				<%--     <td>${item.id}</td> --%>
										      					<td><form:input path="vname" value="${item.vname}" size="14"/></td>
										         				<td><form:input path="vpassword" value="${item.vpassword}" size="14"/></td>
										         			    <td><form:input path="gender" value="${item.gender}" size="14"/></td>
										         			    <td><form:input path="age" value="${item.age}" size="14"/></td>
										         			    <td><form:input path="job" value="${item.job}" size="14"/></td>
										         			    <td><form:input path="videntifyfile" value="${item.videntifyfile}" size="14"/></td>
										         			    <td><form:input path="vphone" value="${item.vphone}" size="14"/></td>
										         				<td><input class="btn btn-info" name="action" type="submit" value="Update"/></td>
										         				<td><input class="btn btn-danger" name="action" type="submit" value="Delete"/></td>
										      				</tr>
										      			</form:form>
										   				</tbody>
													</c:forEach>
												</c:if>
                                            </tbody>
                                        </table>
                                    <!-- /.table-responsive -->
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->

                </div>
                <!-- /.col-lg-8 -->

            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

<script>

function validateadd() {
	
	if(newform.vname.value=="")  
    {  
         alert("Username cannot be empty, please type username!");  
         newform.vname.focus();  
         return false;  
    }

    if(newform.vpassword.value=="")  
    {  
         alert("Password cannot be empty, please type password!");  
         newform.vpassword.focus();  
         return false;  
    }
    
    if(newform.gender.value.length>1)  
    {  
         alert("gender should be F or M");  
         newform.gender.focus();  
         return false;  
    } 
}

function validatemodify() {
	listform.vname.focus(); 
	alert(listform.vpassword.value)
	if(listform.vname.value=="")  
    {  
         alert("Username cannot be empty, please type username!");  
         listform.vname.focus();  
         return false;  
    }
	
	if(listform.gender.value.length()>1)  
    {  
         alert("Username cannot be empty, please type username!");  
         listform.gender.focus();  
         return false;  
    }
/*     if(listform.email.value.length!=0)  
    {  
    	var x=listform.email.value;
    	var atpos=x.indexOf("@");
    	var dotpos=x.lastIndexOf(".");
    	if (atpos<1 || dotpos<atpos+2 || dotpos+2>x.length || dotpos+2==x.length){
    		alert("Invalid email address!");
    		listform.email.focus(); 
    		return false;
    	}
    }  
    else  
    {  
        alert("Email cannot be empty, please type email!");  
        listform.email.focus();  
        return false;  
    } */
    if(listform.vpassword.value=="")  
    {  
         alert("Password cannot be empty, please type password!");  
         listform.password.focus();  
         return false;
    }
}
</script>


    <!-- jQuery -->
    <script src="<%=path%>/backend/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=path%>/backend/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=path%>/backend/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<%=path%>/backend/vendor/raphael/raphael.min.js"></script>
    <script src="<%=path%>/backend/vendor/morrisjs/morris.min.js"></script>
    <script src="<%=path%>/backend/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=path%>/backend/dist/js/sb-admin-2.js"></script>

</body>

</html>