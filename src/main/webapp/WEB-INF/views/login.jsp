<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<script src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/login_style.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/Login-Form-Clean.css" />

		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
 		<script src="<%=request.getContextPath()%>/js/login.js"></script>

</head>

<body>
			
			
    <div class="login-clean">
        <form>
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-paper"></i></div>
            <div class="form-group">
            	<h2 class="text-center">V-time</h2>
            </div>
            <div class="form-group">
                <input class="form-control" type="text" id="username" placeholder="Username">
            </div>
            <div class="form-group">
                <input class="form-control" type="password" id="password" placeholder="Password">
            </div>
            <div class="form-group">
                <input type="button" class="btn btn-primary" value="Login" onclick="login()">
                </div><a href="./resetpassword" class="forgot"><u>Forgot Password?</u></a>
			<hr>
			<h4>New User:</h4>
			<input type="button" class="btn btn-primary" value="Register As Volunteer" onclick="javascrtpt:window.location.href='./volunteerregister'">
			<input type="button" class="btn btn-primary" value="Register As Organization" onclick="javascrtpt:window.location.href='./organizationregister'">			
       	</form>
    </div>
    
</body>

</html>
