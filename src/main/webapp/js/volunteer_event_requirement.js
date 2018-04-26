var e_id,eve;
function loadData(){
	var request = new Object();  
    request = GetRequest();  
	e_id=request['id'] ;
	//alert("****"+e_id);
	getEventData();
	$("#form-job").attr("value",eve.job_limitation);
	$("#form-gender").attr("value",eve.gender_limitation);
	$("#form-age").attr("value",eve.age_limitation);
	$("#form-exist_num").attr("value",eve.exist_num);
	//$("#form-total_num").attr("value",eve.volunteer_num);
	
}

function getEventData(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer_event/getEventById",
		data : {event_id:e_id
				},
		success : function(msg) {
			eve=msg;
			
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