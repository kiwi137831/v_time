var lastSel;




function profile(){
	
	
	
	id = $("#dataGrid1").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid1").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.organization_id;
    var url='http://localhost:8080/elec5619/organization/profile?id='+ val;

    window.location.href = url;  ''
    
    
    
    
    
    
    
    
}





var mydata;
		jQuery(document).ready(function() {
			jQuery("#dataGrid1").jqGrid({
				datatype : "local",//数据类型
				height : 250,//高度
				onSelectRow: function (rowId, status, e) {
			        if (rowId == lastSel) {
			            $(this).jqGrid("resetSelection");
			            lastSel = undefined;
			            status = false;
			        } else {
			            lastSel = rowId;
			        }
			    },
			beforeSelectRow: function (rowId, e) {
			            $(this).jqGrid("resetSelection");
			            return true;
			        },

				colNames : [ 'event_id','name', 'event_suburb', 'brief_inf', 'postcode', 'start time', 'end time', 'volunteer number','description','status','organization_id','job_limitation','gender limitation','age limitation','enroll num','state','event_address'],//列名
				  colModel:[	
				          	   {name:'event_id',index:'event_id',hidden:true },
				               {name:'ename',index:'ename', width:100, sorttype:"string"},
				               {name:'event_suburb',index:'event_suburb', hidden:true },
				               {name:'brief_inf',index:'brief_inf',hidden:true},
				               {name:'event_postcode',index:'event_postcode', width:80,sorttype:"int"},
				               {name:'stime',index:'stime', width:80, align:"right",sorttype:"date"},        
				               {name:'etime',index:'etime', width:80,align:"right",sorttype:"date"},        
				               {name:'volunteer_num',index:'volunteer_num', sorttype:"int"},       
				               {name:'description',index:'description',hidden:true,sortable:false} ,   
				               {name:'status',index:'status', width:80, sortable:false} ,   
				               {name:'organization_id',index:'organization_id', hidden:true},
				               {name:'job_limitation',index:'job_limitation', hidden:true} ,
				               {name:'gender_limitation',index:'gender_limitation' ,sortable:false} ,
				               {name:'age_limitation',index:'age_limitation',hidden:true,sortable:false} ,
				               {name:'exist_num',index:'exist_num',sorttype:"int"} ,
				               {name:'event_state',index:'event_state'},
				               {name:'event_address',index:'event_address', hidden:true} ,
				              
				           ],

				rowNum : 10,//默认显示行数 
				rowList : [ 5, 10, 20 ],
				jsonReader : {
					root : 'results',
					repeatitems : false
				},
				pager : '#pager1',//分页
				multiselect : true,//支持多项选择
				sortname : 'id',//排序字段
				sortorder : "desc",//排序方式
				caption : "Event"//列表标题
			});

		

		});
var oid;
var csearch;
function post_search(){

    csearch=$("#e_search").val();
    
	if(csearch==null){
		csearch="";
	}


	
	search();
}


function addevent(){
	id = $("#dataGrid1").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid1").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.organization_id;
    var url = 'http://localhost:8080/elec5619/organization/newevent/'+val;  
    window.location.href = url;  
	
	
	
	
}


function apply(){
	id = $("#dataGrid1").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid1").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.organization_id;
	
    var url = 'http://localhost:8080/elec5619/organization/apply/'+val; 
    window.location.href = url;  
	
}


function reset(){
	
	$("#e_search").val('');
	
}


var id, rowData,val;

function modify(){
	//rowData= $("#dataGrid1").getRowData(event_id);
	id = $("#dataGrid1").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid1").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.event_id;
	
    var url = '../organization/get_event/'+val;  
    window.location.href = url;  
}



function logout(){
	
	
	
    var url = 'http://localhost:8080/elec5619/v-time/login'; 
    window.location.href = url;  
	
}
function post_id(){
	$.ajax({
		type : "GET",
		async : false,
		dataType : "json",
		url : "../organization/get_event",
		data : {val:val
			},
		error:function(msg){
              
           },
		success : function(msg) {
				alert('successful！');	
		}	
			
	});	
}

function home(){}


function search(){
	var url=window.location.href;


	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/search",
		data : {csearch:csearch,
				url:url,
			},
		error:function(msg){
		            //请求失败处理函数        
		        },
		success : function(msg) {
			
		
			
			jQuery("#dataGrid1").jqGrid("clearGridData");
			 mydata=msg;
			for (var i = 0; i <= mydata.length; i++)
				jQuery("#dataGrid1").jqGrid('addRowData', i + 1, mydata[i]);
			
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