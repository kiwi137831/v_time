var event;
var event_id,ename,event_address,event_suburb,brief_inf,event_postcode,stime,etime,volunteer_num;
var description,status,organization_id,age_limitation,exist_num,event_state;
var message,signal;
var job_limitation,gender_limitation;
var age,gender;
var gender_index,age_index;

function update(){
	var request = new Object();  
    request = GetRequest();  

    event_id=$("#event_id").val();
	if(event_id==null){
		event_id="";
	}
	
	ename=$("#ename").val();
	if(ename==null){
		ename="";
	}
	
	event_address=$("#event_address").val();
	if(event_address==null){
		event_address="";
	}
	
	event_suburb=$("#event_suburb").val();
	if(event_suburb==null){
		event_suburb="";
	}
	
	brief_inf=$("#brief_inf").val();
	if(brief_inf==null){
		brief_inf="";
	}
	
	event_postcode=$("#event_postcode").val();
	if(event_postcode==null){
		event_postcode="";
	}	
	
	volunteer_num=$("#volunteer_num").val();
	if(volunteer_num==null){
		volunteer_num="";
	}	
	
	description=$("#description").val();
	if(description==null){
		description="";
	}	
	
	status=$("#status").val();
	if(status==null){
		status="";
	}	
	
	organization_id=$("#organization_id").val();
	if(organization_id==null){
		organization_id="";
	}
	

	job_limitation=$("#job_limitation").val();
	if(job_limitation==null){
		job_limitation="";
	}
	
	
	//gender=document.getElementById('gender_limitation');
	//gender_index=gender.selectedIndex;
	gender_limitation=$("#gender_limitation").val();
	if(gender_limitation==null){
		gender_limitation="";
	}
	
	stime=$("#stime").val();
	if(stime==null){
		stime="";
	}
	
	etime=$("#etime").val();
	if(etime==null){
		etime="";
	}

	//age=document.getElementById('age_limitation');
	//age_index=age.selectedIndex;
	//age_limitation=age_index.options[age_index].value;
	age_limitation=$("#age_limitation").val();
	if(age_limitation==null){
		age_limitation="";
	}
	
	
	exist_num=$("#exist_num").val();
	if(exist_num==null){
		exist_num="";
	}
	
	event_state=$("#event_state").val();
	if(event_state==null){
		event_state="";
	}
	updateEvent();
	if(message=="success"){
		alert("success");
	}else{
		alert("success");
	}
}

function logout(){
	
	
	
    var url = 'http://localhost:8080/elec5619/v-time/login'; 
    window.location.href = url;  
	
}

function home(){
	var val= $("#organization_id").val();
	
    var url = '../organization/search/'+val;  
    window.location.href = url;  
}

function updateEvent(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/organization_modify",
		data : {event_id:event_id,
				ename:ename,
				event_address:event_address,
				event_suburb:event_suburb,
				brief_inf:brief_inf,
				event_postcode:event_postcode,
				stime:stime,
				etime:etime,
				volunteer_num:volunteer_num,
				description:description,
				status:status,
				organization_id:organization_id,
				job_limitation:job_limitation,
				gender_limitation:gender_limitation,
				age_limitation:age_limitation,
				exist_num:exist_num,
				event_state:event_state,
				
			},
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