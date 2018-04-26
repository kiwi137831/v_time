var volunteer,organization,admin;
var username,password;
var message,signal,usertype,userid,url;


function login(){
	
	username=$("#username").val();
 
	password=$("#password").val();
 
	submitlogininfo();
	
	window.location.href=url;
}


function submitlogininfo(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../v-time/logincheck",
		data : {username:username,
				password:password,},
		success : function(msg) {
			message=msg.message;
			if(message== "success"){
				usertype=msg.type;
				if(usertype == "volunteer"){
					userid=msg.id;
					url="http://localhost:8080/elec5619/volunteer/mainPage?id=" + userid;
				}
				else if(usertype == "organization"){
					userid=msg.id;
					url="http://localhost:8080/elec5619/organization/search/" + userid;
				}
				else if(usertype == "admin"){
					userid=msg.id;
					url="http://localhost:8080/elec5619/backend/main";
				}
			}
			else{
				alert("Input wrong username or password! Please input again!");
				url="http://localhost:8080/elec5619/v-time/login";
			}
		}
	});
}
 