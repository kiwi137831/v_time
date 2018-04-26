<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Forgot Password</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="<%=request.getContextPath()%>/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/login_style.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/ace/assets/css/Login-Form-Clean.css" />

		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/ace/assets/js/ace-extra.min.js"></script>
<%-- 		<script src="<%=request.getContextPath()%>/js/volunteer_profile.js"></script> --%>

</head>

<body>
			
			
    <div class="login-clean">
        <form method="post" action="j_spring_security_check">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-paper"></i></div>
            <div class="form-group">
            	<h2 class="text-center">V-time</h2>
            	<h5 class="text-center">Reset Password</h5>
            </div>
            <div class="form-group">
                <input class="form-control" type="email" name="username" placeholder="Input Register E-mail">
            </div>
                <button class="btn btn-primary btn-block" type="submit" value="login">Send Reset Request</button>
       	</form>
    </div>
    <script src="ace/assets/js/jquery.min.js"></script>
    <script src="ace/assets/js/bootstrap.min.js"></script>
</body>

</html>
