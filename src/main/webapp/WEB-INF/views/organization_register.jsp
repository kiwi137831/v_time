<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Organization Register</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />

		<!-- page specific plugin styles -->
		<script src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script> 
		
		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
 		<script src="<%=request.getContextPath()%>/js/organization_register.js"></script> 

</head>

<body>
	
    <div class="container">
    <h2 class="sr-only">register Form</h2>
    <div class="form-group">
      <h2 class="text-center">V-time</h2>
      <h6 class="text-center" style="color:#CCCCCC">Input your account information to register as ogranization</h6>
    </div>
    <form class="form-horizontal col-sm-offset-2">
      <div class="form-group">
        <label for="inputEmail" class="col-sm-2 control-label">Email:</label>
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
        	<input type="button" class="btn btn-primary" value="Register" onclick="register_o()">
        </div>
      </div>
    </form>

    <script src="ace/assets/js/jquery.min.js"></script>
    <script src="ace/assets/js/bootstrap.min.js"></script>
  </div>
</body>

</html>
