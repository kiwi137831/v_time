var lastSel;

var mydata;
jQuery(document).ready(
		function() {
			jQuery("#dataGrid1").jqGrid(
					{
						datatype : "local",//数据类型
						height : 400,//高度
						rownumbers: true, //显示行号
						onSelectRow : function(rowId, status, e) {
							if (rowId == lastSel) {
								$(this).jqGrid("resetSelection");
								lastSel = undefined;
								status = false;
							} else {
								lastSel = rowId;
							}
						},
						beforeSelectRow : function(rowId, e) {
							$(this).jqGrid("resetSelection");
							return true;
						},

						colNames : [ 'id', 'name', 'email', 'passowrd',
								'address', 'suburb', 'state', 'postcode',
								'type', 'target', 'description',
								'indentififile', 'phone' ],//列名
						colModel : [ {
							name : 'id',
							index : 'id',
							hidden : true
						}, {
							name : 'name',
							index : 'name',
							width : 200,
							sorttype : "string"
						}, {
							name : 'email',
							index : 'email',
							width : 200,
							sortable : false
						}, {
							name : 'password',
							index : 'password',
							hidden : true
						},{
							name : 'address',
							index : 'address',
							hidden : true
						}, {
							name : 'suburb',
							index : 'suburb',
							width : 200,
							sorttype : "string"
						}, {
							name : 'state',
							index : 'state',
							width : 200,
							sorttype : "string"
						}, {
							name : 'postcoed',
							index : 'postcode',
							hidden : true
						}, {
							name : 'type',
							index : 'type',
							width : 200,
							sorttype : "string"
						}, {
							name : 'target',
							index : 'target',
							hidden : true
						}, {
							name : 'description',
							index : 'description',
							hidden : true
						}, {
							name : 'indentifyfile',
							index : 'identifiyfile',
							hidden : true
						}, {
							name : 'phone',
							index : 'phone',
							hidden : true
						}, ],

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
function post_search() {
	var request = new Object();
	request = GetRequest();
	csearch = $("#e_search").val();
	if (csearch == null) {
		csearch = "";
	}
	search();
}

var id, rowData, val;

function modify() {
	//rowData= $("#dataGrid1").getRowData(event_id);
	id = $("#dataGrid1").jqGrid('getGridParam', 'selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
	rowData = $("#dataGrid1").jqGrid("getRowData", id);//根据上面的id获得本行的所有数据
	val = rowData.organization_id;

	var url = '../admin/get_organization/' + val;
	window.location.href = url;
}

function post_id() {
	$.ajax({
		type : "GET",
		async : false,
		dataType : "json",
		url : "../admin/get_organization",
		data : {
			val : val
		},
		error : function(msg) {
			alert('fail!');
		},
		success : function(msg) {
			alert('success!');
		}

	});
}

function search() {
	$.ajax({
		type : "POST",
		async : false,
		dataType : "json",
		url : "../admin/search_organization",
		data : {
			csearch : csearch,
		},
		error : function(msg) {
			//请求失败处理函数

			alert('fail!');

		},
		success : function(msg) {

			alert('success!');

			jQuery("#dataGrid1").jqGrid("clearGridData");
			mydata = msg;
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
