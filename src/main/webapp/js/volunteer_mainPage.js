var search_content, search_event;
var e_state,do_apply,insertSig;

function EnterPress(){
	search_content=$("#nav-search-input").val();
	search();
	$("#grid-table").jqGrid('clearGridData'); 
	$("#grid-table").jqGrid('setGridParam', {
		datatype: "local",
		data: search_event
	}).trigger("reloadGrid");
}

function search(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer_event/getEventsForCondition",
		data : {search_content:search_content
				},
		success : function(msg) {
			search_event=msg.events;
			
		}
	});
}

function doApply(){
	checkEventState();
	if(do_apply=="yes"){
		updateV_E();
		if(insertSig=="success"){
			alert("request have been sent");
		}else{
			alert("fail");
		}
	}else{
		alert("the event has been applied or closed");
	}
}

function checkEventState(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer_event/checkVolunteerEventState",
		data : {event_id:current_event_id,
			    volunteer_id:id
				},
		success : function(msg) {
			e_state=msg.state;
			if(e_state=="3"){
				do_apply="yes";
			}else{
				do_apply="no";
			}
			
		}
	});
}

function updateV_E(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../volunteer_event/insertV_E",
		data : {event_id:current_event_id,
		    	volunteer_id:id
				},
		success : function(msg) {
			insertSig=msg.message;
			
		}
	});
}