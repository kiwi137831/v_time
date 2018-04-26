var organization;
var email,password,name,address,phone,suburb,state,postcode,type,description,oidentifyfile,oidentifyfile2;
var message,signal;


function admin_register_org(){
	
	email=$("#inputEmail").val();
	if(email==null){
		email="";
	}
	password=$("#inputPassword").val();
	if(password==null){
		password="";
	}
	name=$("#inputName").val();
	if(name==null){
		name="";
	}
	phone=$("#inputPhone").val();
	if(phone==null){
		phone="";
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
	
	description=$("#Description").val();
	if(description==null){
		description="";
	}

	submitOrganizationRegister();
		
}


function submitOrganizationRegister(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../admin/addOrganization",
		data : {email:email,
				password:password,
				name:name,
				address:address,
				phone:phone,
				suburb:suburb,
				state:state,
				postcode:postcode,
				type:type,
				description:description},
		success : function(msg) {
			message=msg.message;
			
		}
	});
}
