<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
<meta charset="UTF-8">
<title></title>
<link href="css/dataCenter/addCommunity.css" rel="stylesheet" />
<link href="layui/css/layui.css" rel="stylesheet">
<link href="css/admin_public.css" rel="stylesheet" />
<script type="text/javascript" src="js/region.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=UOEhL3r0CIXKBpQmibW2wwy6uL7T0UGO"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</head>

<body>

	<section style="width: 96%; background-color: white; margin: 0px auto;">
		<!--
              	作者：ADD
              	时间：2018-04-12
              	描述：添加小区1
              -->
		<header>
			<h2>
				<c:if test="${id == -1 }">
				添加车位
				</c:if>
				<c:if test="${id != -1 }">
				修改车位
				</c:if>
			</h2>
		</header>
		<!--主体 -->
		<c:forEach items="${stallList }" var="stall">
		<div id="subject" style="margin: 20px 0 40px 0">
			<fm:form id="fm" action="##" onsubmit="return false" method="post"
				modelAttribute="Community" enctype="multipart/form-data">
				<div class="row">
					<label>小区名称:</label> <span class="span">*</span> 
					<select style="background-color: #eee;" class="shortInput" name="communityName">
					<option value="${stall.community.communityId}">${stall.community.communityName}</option>
					<c:forEach items="${communityList }" var="communityList">
					<option value="${communityList.communityId}">${communityList.communityName}</option>	
					</c:forEach>				
					</select>
				</div>
				
				<div class="row">
					<label>车位号:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="输入车位号"
						name="carno" value="${stall.carno }"/>
					
				</div>
				<div class="row">
					<label>产权面积:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="请输入车位面积"
						name="area" value="${stall.carport.area }"/>
				</div>
				<div class="row">
					<label>车位状态:</label> <span class="span">*</span> 
					<select class="shortInput" name="carPortStateName" >
					<option value="${stall.carPortState.carPortStateId }">${stall.carPortState.carPortStateName }</option>	
					<c:forEach items="${carPortStateList }" var="carPortStateList">
					<option value="${carPortStateList.carPortStateId}">${carPortStateList.carPortStateName}</option>	
					</c:forEach>
					</select>
				</div>
				<div class="row">
					<label>备注:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="备注"
						name="remark" value="${stall.remark }" />
				</div>
				
				
				<div id="foot" class="row">
					<label></label>
					<button id="save"  class="button">
						<c:if test="${id == -1 }">
							确定
						</c:if>
						<c:if test="${id != -1 }">
							修改
						</c:if>
					</button>
					<button onclick="javascript:history.go(-1)" class="button">返回</button>
				</div>

			</fm:form>
		


		</div>
</c:forEach>
	</section>
	<script src="layui/layui.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script type="text/javascript">
	$(function(){
		var id="${id}";
		if(id!=-1){
			$.post("Community/getCommunityById/"+id,function(data){
				console.log(data);
				var lu='<%=basePath%>';
				$("input[name='communityName']").val(data.communityName);
				$("input[name='communityAddress']").val(data.communityAddress);
				$("input[name='communityServicePhone']").val(data.communityServicePhone);
				$("input[name='communityAdmin']").val(data.communityAdmin);
				$("input[name='communityAdminPhone']").val(data.communityAdminPhone);
				$("input[name='communityLogo']").prev().attr("src",lu+"files/"+data.communityLogo).show();
				$("input[name='communityImage']").prev().attr("src",lu+"files/"+data.communityImage).show();
			})
		}
	})
	$("#save").click(function(){			
		var name=$("input[name='communityName']").val();
		var address=$("input[name='communityAddress']").val();
		var phone=$("input[name='communityServicePhone']").val();
		var admin=$("input[name='communityAdmin']").val();
		var adminPhone=$("input[name='communityAdminPhone']").val();
		
		if(name==""||address==""||phone==""||admin==""||adminPhone==""){
			layer.msg('带*必选项不能为空', {
		icon: 5,//数字代表表情样式
		time: 4000 //2秒关闭,如果不配置，默认是3秒
		}, function(){
			if($("input[name='communityName']").val()==""){
			 $("input[name='communityName']").css("border","1px dashed red");
			}
			if($("input[name='communityAddress']").val()==""){
				$("input[name='communityAddress']").css("border","1px dashed red")
			}
			if($("input[name='communityServicePhone']").val()==""){
				$("input[name='communityServicePhone']").css("border","1px dashed  red")
			}
			if($("input[name='communityAdmin']").val()==""){
				$("input[name='communityAdmin']").css("border","1px dashed red")
			}
			if($("input[name='communityAdminPhone']")==""){
				$("input[name='communityAdminPhone']").css("border","1px dashed red")
			}
		}); 
		}else{
			//默认添加操作
			var hint="添加成功";
			var uri="Community/doadd.json";
			var id="${id}";
			console.log(id);
			//不等-1说明是修改
			if(id!=-1){
				hint="修改成功";
				uri="";
				var communityId=$('<input type="hidden" name="communityId" value="'+id+'"/>');
				$("#fm").append(communityId);
			}			
			var formData = new FormData($("#fm" )[0]);
			 layer.load(2,{time:10*200});
			  $.ajax({
		            //几个参数需要注意一下
		                type:"POST",//方法类型
		                dataType: "json",//预期服务器返回的数据类型
		                url:uri,
		                data:formData,
		                cache: false,  
		                processData: false,  
		                contentType: false, 
		                async: true,    
		                success: function (result) {
		                    if(result==1){
		                    	layer.alert(hint,{icon: 1,shade:0},function(index){
				        			//window.location="../Community/doCommunityList.html";			        			
				        		}); 		                    	 
		                    }else{
		                    	layer.alert("操作失败",{icon: 2,shade:0},function(index){
				        			//window.location="../Community/addCommunity/${id}";			        			
				        		}); 
		                    } 
		                }
		            })
		}
	});

	
		

		
</script>

</body>

</html>
