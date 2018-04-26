var event;
var ename,eaddress,esuburb,epostcode,estate,stime,etime,edescription,organizationid,joblimination,agelimination,existnum;
var message,signal;


function admin_register_eve(){
	
	ename=$("#inputEname").val();
	if(ename==null){
		ename="";
	}
	eaddress=$("#inputEvent_address").val();
	if(eaddress==null){
		eaddress="";
	}
	esuburb=$("#inputEvent_suburb").val();
	if(esuburb==null){
		esuburb="";
	}
	estate=$("#Event_state").val();
	
	epostcode=$("#inputEvent_postcode").val();
	if(epostcode==null){
		epostcode="";
	}
	stime=$("#inputStime").val();
	if(stime==null){
		stime="";
	}
	etime=$("#inputEtime").val();
	if(etime==null){
		Etime="";
	}
	
	edescription=$("#Description").val();
	if(edescription==null){
		edescription="";
	}
	
	joblimination=$("#inputJob_limitation").val();
	if(joblimination==null){
		joblimination="";
	}
	agelimination=$("#age_limitation").val();

	existnum=$("#inputExist_num").val();
	if(existnum==null){
		existnum="";
	}

	submitEvnetRegister();
		
}


function submitEvnetRegister(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../admin/addEvent",
		data : {ename:ename,
			eaddress:eaddress,
			esuburb:esuburb,
			estate:estate,
			epostcode:epostcode,
			stime:stime,
			etime:etime,
			edescription:edescription,
			joblimination:joblimination,
			agelimination:agelimination,
			existnum:existnum},
		success : function(msg) {
			message=msg.message;
			
		}
	});
}
