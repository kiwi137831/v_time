

function logout(){
	
	
	
    var url = 'http://localhost:8080/elec5619/v-time/login'; 
    window.location.href = url;  
	
}

function home(){
	var val= $("#oid").val();
	
    var url = '../organization/search/'+val;  
    window.location.href = url;  
}



function returnpage(){
	
	var val= $("#oid").val();
	
    var url = '../organization/apply/'+val;  
    window.location.href = url;  
	
}