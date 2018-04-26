var lastSel;

var mydata;
		jQuery(document).ready(function() {
			jQuery("#dataGrid").jqGrid({
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

				colNames : [ 've_id','volunteer_id','event_id','name', 'status', 'gender', 'age', 'apply time'],//列名
				  colModel:[	
				          	   {name:'ve_id',index:'ve_id',width:100,hidden:true },
				          	   {name:'volunteer_id',index:'volunteer_id',hidden:true },
				          	   {name:'event_id',index:'event_id',width:100,hidden:true  },
				               {name:'vname',index:'vname', width:200, sorttype:"string"},
				               {name:'status',index:'status'},
				               {name:'gender',index:'gender',hidden:true },
				               {name:'age',index:'age',width:200},  
				               {name:'applytm',index:'applytm',width:200},
				               
				           ],

				rowNum : 10,//默认显示行数 
				rowList : [ 5, 10, 20 ],
				jsonReader : {
					root : 'results',
					repeatitems : false
				},
				pager : '#pager',//分页
				multiselect : true,//支持多项选择
				sortname : 'id',//排序字段
				sortorder : "desc",//排序方式
				caption : "Volunteer"//列表标题
			});

		

		});

var v_search;
function post_search(){
	var request = new Object();  
    request = GetRequest();  
    v_search=$("#v_search").val();
	if(v_search==null){
		v_search="";
	}
	search();
}


function reset(){
	
	$("#v_search").val('');
	
}

var id, rowData,val;


function apply(){

	var id = $("#dataGrid").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
	var rowData = $("#dataGrid").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    var ve_id= rowData.ve_id;
    var event_id= rowData.event_id;
    var status =rowData.status
    $.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/pass",
		data : {
				ve_id:ve_id,
				event_id:event_id
			},
		error:function(msg){
			if (status=="1"){
				alert("This volunteer is already apply");
				
			}
			if (status=="0"){
				alert("Successful Apply");
				
			}        
		        },
		success : function(msg) {
				
				alert("Successful Apply");
		}	
			
	});
  
    window.location.reload();
}
function home(){
	var val= $("#organization_id").val();
	
    var url = 'http://localhost:8080/elec5619/organization/search/'+val;  
    window.location.href = url;  
}

function logout(){
	
	
	
    var url = 'http://localhost:8080/elec5619/v-time/login'; 
    window.location.href = url;  
	
}


function check(){
	//rowData= $("#dataGrid").getRowData(event_id);
	id = $("#dataGrid").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.volunteer_id;
     id=$("#organization_id").val();
    var url = 'http://localhost:8080/elec5619/organization/check/'+id+"/"+val;
    window.location.href = url;  
}

function search(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../organization/search_v",
		data : {v_search:v_search,
			},
		error:function(msg){
		            //请求失败处理函数
			
			
//                alert('failure！');
         
		        
		        },
		success : function(msg) {
			
		
			
			jQuery("#dataGrid").jqGrid("clearGridData");
			 mydata=msg;
			for (var i = 0; i <= mydata.length; i++)
				jQuery("#dataGrid").jqGrid('addRowData', i + 1, mydata[i]);
			
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