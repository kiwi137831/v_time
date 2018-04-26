var lastSel;

var mydata;
		jQuery(document).ready(function() {
			jQuery("#dataGrid1").jqGrid({
				datatype : "local",//数据类型
				height : 400,//高度
				rownumbers: true, //显示行号
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

				colNames : [ 'event_id','name', 'event_suburb', 'brief_inf', 'postcode', 'start time', 'end time', 'volunteer number','description','status','organization_id','job limitation','gender limitation','age limitation','enroll num','state','event_address'],//列名
				  colModel:[	
				          	   {name:'event_id',index:'event_id',hidden:true },
				               {name:'ename',index:'ename', width:100, sorttype:"string"},
				               {name:'event_suburb',index:'event_suburb', hidden:true },
				               {name:'brief_inf',index:'brief_inf',hidden:true},
				               {name:'event_postcode',index:'event_postcode', hidden:true},
				               {name:'stime',index:'stime', width:150, align:"right",sorttype:"date"},        
				               {name:'etime',index:'etime', width:150,align:"right",sorttype:"date"},        
				               {name:'volunteer_num',index:'volunteer_num', width:100, sorttype:"int"},       
				               {name:'description',index:'description',hidden:true,sortable:false} ,   
				               {name:'status',index:'status', hidden:true} ,   
				               {name:'organization_id',index:'organization_id', hidden:true},
				               {name:'job_limitation',index:'job_limitation', width:80} ,
				               {name:'gender_limitation',index:'gender_limitation',width:80,sortable:false} ,
				               {name:'age_limitation',index:'age_limitation',width:80,sortable:false} ,
				               {name:'exist_num',index:'exist_num',width:100, sorttype:"int"} ,
				               {name:'event_state',index:'event_state',width:100},
				               {name:'event_address',index:'event_address', hidden:true} ,
				              
				           ],

				rowNum : 10,//默认显示行数 
				rowList : [ 5, 10, 20 ],
				jsonReader : {
					root : 'results',
					repeatitems : false
				},
				pager1 : '#pager1',//分页
				multiselect : true,//支持多项选择
				sortname : 'id',//排序字段
				sortorder : "desc",//排序方式

			});

		

		});

var csearch;
function post_search(){
	var request = new Object();  
    request = GetRequest();  
    csearch=$("#e_search").val();
	if(csearch==null){
		csearch="";
	}
	search();
}




var id, rowData,val;

function modify(){
	//rowData= $("#dataGrid1").getRowData(event_id);
	id = $("#dataGrid1").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
    rowData = $("#dataGrid1").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
    val= rowData.event_id;
	
    var url = '../admin/get_event/'+val;  
    window.location.href = url;  
}

function post_id(){
	$.ajax({
		type : "GET",
		async : false,
		dataType : "json",
		url : "../admin/get_event",
		data : {val:val
			},
		error:function(msg){
                alert('fail!');
           },
		success : function(msg) {
				alert('success!');	
		}	
			
	});	
}






function search(){
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../admin/search_event",
		data : {csearch:csearch,
			},
		error:function(msg){
		            //请求失败处理函数
			
			
                alert('fail!');
         
		        
		        },
		success : function(msg) {
			
			alert('success!');
			
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

