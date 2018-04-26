<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Volunteer Register</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		
		<!-- page specific plugin styles -->
		<script src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script> 
		
		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
 		<script src="<%=request.getContextPath()%>/js/volunteer_register.js"></script> 

</head>

<body>
	
    <div class="container">
    <h2 class="sr-only">register Form</h2>
    <div class="form-group">
      <h2 class="text-center">V-time</h2>
      <h6 class="text-center" style="color:#CCCCCC">Input your account information to register as a volunteer</h6>
    </div>
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
        <label class="col-sm-2 control-label">User Name:</label>
        <div class="col-sm-5">
          <input type="text" class="form-control" id="inputUserName" placeholder="Name">
        </div>
      </div>
      <div class="form-group form-inline">
      	<label class="col-sm-2 control-label">Gender:</label>
        <div class="radio col-sm-offset-1">
  			<label>
    			<input type="radio" name="gender" id="male" value="1" checked>
    			Male
  			</label>
		</div>
		<div class="radio col-sm-offset-1">
  			<label>
    			<input type="radio" name="gender" id="female" value="2">
    			Female
  			</label>
		</div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">Age:</label>
        <div class="col-sm-2">
          <input type="number" min="5" max="99" class="form-control" id="inputAge">
        </div>
      </div>
      <div class="form-group in-line">
        <label class="col-sm-2 control-label">Job:</label>
        <div class="col-sm-2">
        	<select class="form-control" id="choose_job">
  			<option>Student</option>
  			<option>Doctor</option>
  			<option>Professor</option>
  			<option>Seller</option>
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
            <input type="button" class="btn btn-primary" value="Register" onclick="register_v()">
        </div>
      </div>
    </form>

  </div>
</body>

</html>
