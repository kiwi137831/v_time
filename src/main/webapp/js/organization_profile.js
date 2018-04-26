var volunteer;
var id,oemail,opassword,oname,address,suburb,state,postcode,type,description,ophone,oidentifyfile,oidentifyfile2;
var message,signal;

function getOrganization(){
	var request = new Object();  
    request = GetRequest();  
	id=request['id'] ;
	getOrganizationProfile();
	$("#inputName").attr("value",organization.oname);
	$("#inputAddress").attr("value",organization.address);
	$("#inputSuburb").attr("value",organization.suburb);
	$("#inputEmail").attr("value",organization.oemail);
	$("#state").attr("value",organization.state);
	$("#inputPassword").attr("value",organization.opassword);
	$("#inputPostCode").attr("value",organization.postcode);
	$("#type").attr("value",organization.type);
	$("#description").attr("value",organization.description);
	$("#inputContactNumber").attr("value",organization.ophone);
	$("#id-input-file-2").attr("value",organization.videntifyfile);
}

function update_organization(){
	var request = new Object();  
    request = GetRequest();  
    oid=request['id'] ;
    oidentifyfile=request['fileaddress'];
    if(oidentifyfile==null){
    	oidentifyfile=$("id-input-file-2").val();
    }
	
    oemail=$("#inputEmail").val();
	if(oemail==null){
		oemail="";
	}
	opassword=$("#inputPassword").val();
	if(opassword==null){
		opassword="";
	}
	oname=$("#inputName").val();
	if(oname==null){
		oname="";
	}
	address=$("#inputAddress").val();
	if(address==null){
		address="";
	}
	suburb=$("#inputSuburb").val();
	if(suburb==null){
		suburb="";
	}
	state=$("#state").val();
	
	postcode=$("#inputPostCode").val();
	if(postcode==null){
		postcode="";
	}
	
	type=$("#type").val(); 

	ophone=$("#inputContactNumber").val();
	if(ophone==null){
		ophone="";
	}
	
	description=$("#description").val();
	if(description==null){
		description="";
	}
	
	updateOrganizationProfile();
	if(message=="success"){
		alert("success");
	}else{
		alert("fail");
	}
}

 


function getOrganizationProfile(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/getOrganizationProfile",
		data : {id:id},
		success : function(msg) {
			organization=msg;
		}
	});
}

function updateOrganizationProfile(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/updateOrganization",
		data : {id:id,
				oemail:oemail,
				opassword:opassword,
				oname:oname,
				address:address,
				suburb:suburb,
				state:state,
				postcode:postcode,
				type:type,
				ophone:ophone,
				description:description,
				oidentifyfile:oidentifyfile},
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