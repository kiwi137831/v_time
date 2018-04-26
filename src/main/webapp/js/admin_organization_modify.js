var organization;
var id,email,password,name,address,phone,suburb,state,postcode,type,description,oidentifyfile,oidentifyfile2;
var message,signal;

function update(){
	var request = new Object();  
    request = GetRequest();  
    
    id=$("#id").val();
	if(id==null){
		id="";
	}

	email=$("#email").val();
	if(email==null){
		email="";
	}
	password=$("#password").val();
	if(password==null){
		password="";
	}
	name=$("#name").val();
	if(name==null){
		name="";
	}
	phone=$("#phone").val();
	if(phone==null){
		phone="";
	}
	address=$("#address").val();
	if(address==null){
		address="";
	}
	suburb=$("#suburb").val();
	if(suburb==null){
		suburb="";
	}
	state=$("#state").val();
	
	postcode=$("#postcode").val();
	if(postcode==null){
		postcode="";
	}
	
	type=$("#type").val();
	
	description=$("#description").val();
	if(description==null){
		description="";
	}
	
	updateOrganization();
	if(message=="success"){
		alert("success");
	}else{
		alert("success!");
	}
}



function updateOrganization(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../admin_edit_organization",
		data : {id:id, 
			email:email,
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

function GetRequest() {  
    var url = location.search; 
    var theRequest = new Object();  
    if (url.indexOf("?") != -1) {  
        var str = url.substr(1);    
        strs = str.split("&");  
        for (var i = 0; i < strs.length; i++) {  
            theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
        }  
    }  
    return theRequest;  
}  