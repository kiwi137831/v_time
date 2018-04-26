var volunteer;
var vid,vemail,vpassword,vname,gender,job,videntifyfile,videntifyfile2,vphone;
var message,signal;

function getVolunteer(){
	var request = new Object();  
    request = GetRequest();  
	vid=request['id'] ;
	getVolunteerProfile();
	$("#form-vname").attr("value",volunteer.vname);
	$("#form-gender").attr("value",volunteer.gender);
	$("#form-job").attr("value",volunteer.job);
	$("#form-email").attr("value",volunteer.vemail);
	$("#form-job").attr("value",volunteer.job);
	$("#form-password").attr("value",volunteer.vpassword);
	$("#id-input-file-2").attr("value",volunteer.videntifyfile);
}

function update(){
	var request = new Object();  
    request = GetRequest();  
    vid=request['id'] ;
    videntifyfile=request['fileaddress'];
    if(videntifyfile==null){
    	videntifyfile=$("id-input-file-2").val();
    }
	
	vemail=$("#form-email").val();
	if(vemail==null){
		vemail="";
	}
	vpassword=$("#form-password").val();
	if(vpassword==null){
		vpassword="";
	}
	vname=$("#form-vname").val();
	if(vname==null){
		vname="";
	}
	gender=$("#form-gender").val();
	if(gender==null){
		gender="";
	}
	job=$("#form-job").val();
	if(job==null){
		job="";
	}
	
	updateVolunteerProfile();
	if(message=="success"){
		alert("success");
	}else{
		alert("fail");
	}
}

 


function getVolunteerProfile(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer/getVolunteerProfile",
		data : {vid:vid},
		success : function(msg) {
			volunteer=msg;
		}
	});
}

function updateVolunteerProfile(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer/updateVolunteer",
		data : {id:vid,
				vemail:vemail,
				vpassword:vpassword,
				vname:vname,
				gender:gender,
				job:job,
				videntifyfile:videntifyfile},
		success : function(msg) {
			message=msg.message;
			
		}
	});
}

//获取url中参数
function GetRequest() {  
    var url = location.search; //获取url中"?"符后的字串  
    var theRequest = new Object();  
    if (url.indexOf("?") != -1) {  
        var str = url.substr(1);  
        //alert(str);  
        strs = str.split("&");  
        for (var i = 0; i < strs.length; i++) {  
            theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);//获取中文参数转码<span style="font-family: Arial, Helvetica, sans-serif;">decodeURI</span>，（unescape只针对数字，中文乱码)  
        }  
    }  
    return theRequest;  
}  