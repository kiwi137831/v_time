var volunteer;
var vemail,vpassword,vname,age,gender,job,videntifyfile,videntifyfile2;
var message,signal,username;


function register_v(){
//    videntifyfile=request['fileaddress'];
//    if(videntifyfile==null){
//    	videntifyfile=$("id-input-file-2").val();
//    }
	
	vemail=$("#inputEmail").val();
	if(vemail==null){
		vemail="";
	}
	vpassword=$("#inputPassword").val();
	if(vpassword==null){
		vpassword="";
	}
	vname=$("#inputUserName").val();
	if(vname==null){
		vname="";
	}
	gender=$("input[name='gender']:checked").val();

	age=$("#inputAge").val();
	if(age==null){
		age="";
	}
	
	job=$("#choose_job").val(); 
	
	checkaccount();
	if(message=="success"){
		submitVolunteerRegister();
		if(message=="success"){
			alert("success");
			window.location.href="../v-time/login";
		}else{
			alert("fail");
		}
	}
	
	
}


function submitVolunteerRegister(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../v-time/addVolunteer",
		data : {vemail:vemail,
				vpassword:vpassword,
				vname:vname,
				gender:gender,
				age:age,
				job:job,
				videntifyfile:videntifyfile},
		success : function(msg) {
			message=msg.message;
			
		}
	});
}

function checkaccount(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../v-time/registervolunteercheck",
		data : {vemail:vemail},
		success : function(msg) {
			message=msg.message;
			if(message== "success"){
				message=msg.message;
				}
			else{
				alert("The e-mail account already exist!");
				url="http://localhost:8080/elec5619/v-time/volunteerregister";
			}
		}
	});
}
 