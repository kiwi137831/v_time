<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Organization Profile</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="<%=request.getContextPath()%>/ace/assets/css/starter-template.css" rel="stylesheet" />
		
		
		<!-- page specific plugin styles -->
		<script src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script> 
		
		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
 		<script src="<%=request.getContextPath()%>/js/organization_profile.js"></script> 
</head>

<body onload="getOrganization()">
	
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">V-time</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#">Message</a></li>
              <li class="active"><a href="#">Profile</a></li>
              <li><a href="#">Log out</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<ol class="breadcrumb">
  		<li><a href="#">Home</a></li>
  		<li class="active">Profile</li>
	</ol>
    <div class="container">

      <div class="starter-template">
      	<form class="form-horizontal col-sm-offset-2">
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Email:</label>
        <div class="col-sm-5">
          <input type="email" class="form-control" id="inputEmail" placeholder="Email">
        </div>
      </div>
      <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
        <div class="col-sm-5">
          <input type="password" class="form-control" id="inputPassword" placeholder="Password">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">Organization Name:</label>
        <div class="col-sm-5">
          <input type="text" class="form-control" id="inputName" placeholder="Name">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">Contact Number:</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" id="inputContactNumber" placeholder="+61...">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">Description:</label>
        <div class="col-sm-5">
          <textarea class="form-control" rows="3" id="description"></textarea>
        </div>
      </div>
      <div class="form-group form-inline">
      	<label class="col-sm-2 control-label">Address:</label>
      	<div class="row col-sm-5">
      		<div class="col-sm-12">
  				<input type="text" class="form-control" id="inputAddress" placeholder="Street Line">
			</div>
			<div class="col-sm-4" style="padding-top: 10px">
  				<input type="text" class="form-control" id="inputSuburb" placeholder="Suburb">
			</div>
			<div class="col-sm-3" style="padding-top: 10px">
  				<select class="form-control" id="state">
  					<option>NSW</option>
  					<option>VIC</option>
  					<option>QLD</option>
  					<option>SA</option>
  					<option>WA</option>
  					<option>NT</option>
				</select>
			</div>
			<div class="col-sm-5" style="padding-top: 10px">
  				<input type="number" class="form-control" id="inputPostCode" placeholder="PostCode">
			</div>
      	</div>
      </div>
      <div class="form-group in-line">
        <label class="col-sm-2 control-label">Type:</label>
        <div class="col-sm-2">
        	<select class="form-control" id="type">
  			<option>Individual</option>
  			<option>Government</option>
  			<option>Community</option>
  			<option>Other</option>
			</select>
        </div>
      </div>
      <div class="form-group in-line">
        <label class="col-sm-2 control-label">Identify File:</label>
        <div class="col-sm-2 input-lg">
          <input type="file" id="uploadFile">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <input type="button" class="btn btn-default" value="Cancel" onclick="javascrtpt:window.location.href='javascript:history.go(-1)'">
        </div>      
        <div class="col-sm-offset-2 col-sm-2">
         	<button type="update" class="btn btn-primary" onClick="update_organization()">Save</button>
        </div>
      </div>
    </form>
      </div>

    </div>
    
</body>

</html>
