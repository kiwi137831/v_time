<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>





		<div class="navbar navbar-default" id="navbar">
			<script src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
				
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
				
				var request = new Object();  
			    request = GetRequest();  
				var id=request['id'] ;
				//alert("***"+id);
				function href_change_one(){
					$(".navbar-brand").attr("href","mainPage?id="+id);
				}
				
				function href_change_two(){
					$(".home_button").attr("href","mainPage?id="+id);
				}
				
				function href_change_three(){
					$(".v_profile").attr("href","profile?id="+id);
				}
				
				function href_change_four(){
					$(".event_button").attr("href","event?id="+id);
				}
				
				function href_change_five(){
					$(".v_e").attr("href","mainPage?id="+id);
				}
				
				function href_change_six(){
					$(".v_m").attr("href","mainPage?id="+id);
				}
				
				function href_change_seven(){
					$(".v_p").attr("href","mainPage?id="+id);
				}
				
				function href_change_eight(){
					$(".v_message").attr("href","message?id="+id);
				}
				
				function href_change_nine(){
					window.location.href="../v-time/login";
					//$(".v_login").attr("href","../v-time/login?");
				}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="" class="navbar-brand" onClick="href_change_one()">
						<small>
							
							V-Time
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				
				<div class="navbar-header pull-left" role="navigation">
					<ul class="nav ace-nav">
						

						<li class="light-blue" style="margin-left:60px;">
							<a  href="" class="home_button" onClick="href_change_two()">
								
								<span >Home</span>
							</a>
						</li>

						<li class="light-blue" style="margin-left:40px;">
							<a  href="" class="event_button" onClick="href_change_four()">
								<span >Event</span>
							</a>

						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
				
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue" style="margin-right:40px;">
							<a href="" class="v_profile" onClick="href_change_three()">
								
								<span >Profile</span>
							</a>
						</li>

						

						<li class="light-blue" style="margin-right:40px;">
							<a href="" class="v_message" onClick="href_change_eight()">
								<span >Messages</span>
							</a>

							
						</li>

						<li class="light-blue" style="margin-right:20px;">
							<a data-toggle="dropdown" class="v_login" href="" onClick="href_change_nine()">
								
								<span >Log out</span>
							</a>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

	

		