var organization;
var oemail,opassword,oname,address,suburb,state,postcode,type,oidentifyfile,oidentifyfile2;
var message,signal;


function register_o(){
//    videntifyfile=request['fileaddress'];
//    if(videntifyfile==null){
//    	videntifyfile=$("id-input-file-2").val();
//    }
	
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
	
	checkaccount();
	if(message=="success"){
		submitOrganizationRegister();
		if(message=="success"){
			alert("success");
			window.location.href="../v-time/login";
		}else{
			alert("fail");
		}
	}
	
	
}


function submitOrganizationRegister(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../v-time/addOrganization",
		data : {oemail:oemail,
				opassword:opassword,
				oname:oname,
				address:address,
				suburb:suburb,
				state:state,
				postcode:postcode,
				type:type,
				oidentifyfile:oidentifyfile},
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
		url : "../v-time/registerorganizationcheck",
		data : {oemail:oemail},
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
 