<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>太湖世家物业</title>
		<!-- meta tags start -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<!-- meta tags end -->
		<%@include file="/WEB-INF/views/common/css.jsp"%>
		<link href="<%=request.getContextPath()%>/css/qd.css" rel="stylesheet" type="text/css" media="all" />
		<%@include file="/WEB-INF/views/common/js.jsp"%>
		<script type="text/javascript">
			function week(){
				var objDate= new Date();
				var week = objDate.getDay();
				switch(week)
					{
						case 0:
						week="周日";
						break;
						case 1:
						week="周一";
						break;
						case 2:
						week="周二";
						break;
						case 3:
						week="周三";
						break;
						case 4:
						week="周四";
						break;
						case 5:
						week="周五";
						break;
						case 6:
						week="周六";
						break;
					}
				$("#sing_for_number").html( week );
			}
			$(document).ready(function() {
				$.ajax({     
		        type: 'post',     
		        url: "<%=request.getContextPath()%>/service/ifqd.do",
		        cache: false,  
		        data: "wxId=${wxId}",     
		        success: function(data){ 
		        	if("false"==data.qd){
				      $(".singer_r_img").addClass("current");
				      $("#jf").html("当前积分<font color='red'>"+data.jf+"</font>分");
			      	  week();
					$("#jfqd").show();
					$(".singer_r_img").click(function(e){
					 	alert('您已签到，请明天再来！');
						WeixinJSBridge.invoke('closeWindow',{},function(res){});
					});
		        	}else{
		        	$("#jf").html("当前积分<font color='red'>"+data.jf+"</font>分");
			        week();
					$("#jfqd").show();
					$(".singer_r_img").click(function(e){
							var n=Math.round(Math.random()*1)+1;
							$.ajax({     
							        type: 'post',     
							        url: "<%=request.getContextPath()%>/service/jfqd.do",
							        cache: false,  
							        data: "wxId=${wxId}"+"&jf="+n,     
							        success: function(data){ 
							        	if("true"==data.qd){
										var $i=$("<b>").text("+"+n);
										var x=e.pageX,y=e.pageY;
										$i.css({top:y-20,left:x,position:"absolute",color:"#E94F06"});
										$("body").append($i);
										$i.animate({top:y-180,opacity:0,"font-size":"1.4em"},1500,function(){
											$i.remove();
										});
										e.stopPropagation();
									    $(".singer_r_img").addClass("current");
									    $("#jf").html("当前积分<font color='red'>"+data.jf+"</font>分");
							        	}else{
							        		alert("您今天已签到，请明天再来");
							        		WeixinJSBridge.invoke('closeWindow',{},function(res){});
							        	}
							        },     
							        error: function(){     
							            return;     
							        }     
							    }); 
						
					})
		        	}
		        },     
		        error: function(){     
		            return;     
		        }     
		    });
	
			});
	</script>
	</head>

	<body>
		<!-- website wrapper starts -->
		<div class="websiteWrapper">
			<!-- header wrapper starts -->
			<%@include file="/WEB-INF/views/common/header.jsp"%>
			<!-- header wrapper ends -->

			<!-- page wrapper starts -->
			<div class="pageWrapper contactPageWrapper">
			<div class="sectionBreak"></div>
				<div class="singer" style="display: none" id="jfqd"> 
					<div class="singer_l_cont">
						<span id="jf"></span>
					</div>
					<div class="singer_r_r">
						<a class="singer_r_img" href="#">		
							<span id="sing_for_number"></span>
						</a>
					</div>
				</div><!--singer end-->

			</div>
			<!-- page wrapper ends -->

			<!-- footer wrapper starts -->
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer wrapper ends -->
		</div>
		<!-- website wrapper ends -->
	</body>
</html>

