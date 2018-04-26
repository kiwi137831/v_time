var e_id,eve,elocation;
function loadData(){
	var request = new Object();  
    request = GetRequest();  
	e_id=request['id'] ;
	//alert("****"+e_id);
	getEventData();
	elocation=""+eve.event_address+"  "+eve.event_suburb;
	$("#form-ename").attr("value",eve.ename);
	$("#form-stime").attr("value",eve.stime);
	$("#form-etime").attr("value",eve.etime);
	$("#form-location").attr("value",elocation);
	$("#form-content").attr("value",eve.description);
	
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