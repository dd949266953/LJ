<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>添加房屋</title>
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
		<link rel="stylesheet" href="css/admin_public.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	</head>
	<body>
		<div class="bady">
			<div class="container">
		<div style="height:auto;margin-top: 35px;">
		  <div  style="width: 96%;background-color: white;margin: 0px auto;">	  
		  	<!--
             权限管理
             
              -->
              <h2 id="firsth3">添加房屋
              
              </h2>	
              
			 </div>	
			 <hr/>
			 		<div>
			 	<div style="border-bottom: 5px solid #E0E0E0;">          
			 		
			   <form id="fm" action="##" onsubmit="return false" method="post"
				modelAttribute="House" enctype="multipart/form-data">
			 		<div class="mess">
			 			<label>选择小区: <span>*</span></label>
			 			<select  id="communityId" style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
			 				<option value="0">请选择</option>
			 				
			 			</select>
			 		</div>
			 			<div class="mess">
			 			<label>选择楼宇: <span>*</span></label>
			 			<select  id="buildingid" style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
			 				<option value="0">请选择</option>
			 				
			 			</select>
			 		</div>
			 			<div class="mess">
			 			<label>选择单元号: <span>*</span></label>
			 			<select id="houseunit" style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
			 				<option value="0">请选择</option>
			 				
			 			</select>
			 		</div>
			 		<div class="mess">
			 			<label>所在楼层 ：<span>*</span></label>
			 			<input id="floor" type="text"  placeholder="请输入楼宇层数"/>
			 		</div>
			 		<div class="mess">
			 			<label>房号 ：<span>*</span></label>
			 			<input id="houseno" type="text" />
			 		</div>
			 		<div class="mess">
			 			<label>房屋面积 ：<span>*</span></label>
			 			<input id="privatearea" type="text" />
			 		</div>
			 		<div class="mess">
			 			<label>公摊面积 ：<span>*</span></label>
			 			<input id="publicarea" type="text" />
			 		</div>
			 			<div class="mess">
			 			<label>房屋类型: <span>*</span></label>
			 			<select  id="houseStateid" style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
			 				<option value="0">请选择</option>
			 				
			 			</select>
			 		</div>
			 		<div id="button">
			 			<button id="save" class="button" >下一步</button>	 	
			 			<button id="return" class="button" >返回</button>
			 	
			 		</div>
			 		<form>
			 		
</div>			 	
			 </div>
		  </div>
		  </div>
		</div>
	</div>
<script src="layui/layui.all.js" ></script>
<script src="layui/layui.js"></script>
<script>
//窗体加载
$(function(){
	//查询小区
	$.ajax({
		url : '../Community/getAllCommunityName.json',
		dataType : 'json',
		type : 'POST',
		success : function(data) {
			$.each(data, function(i, val) {
				$("#communityId").append(
						"<option name='communityId'  value="+val.communityId+">"
								+ val.communityName + "</option>")
			})
		}

	})
	//查询全部类型
	$.ajax({
		url : '../houseState/getAllHouseState.json',
		dataType : 'json',
		type : 'POST',
		success : function(data) {
			$.each(data, function(i, val) {
				$("#houseStateid").append(
						"<option   value="+val.houseStateid+">"
								+ val.housestatetype + "</option>")
			})
		}
	})
})
$("#communityId").change(function(){
	if($("#communityId").val()!=0){
		//查询楼宇
		$("#buildingid option:gt(0)").remove();
		$.ajax({
			url : '../building/getAllBuildingByCommunityid.json',
			dataType : 'json',
			type : 'POST',
			data:{communityid:$("#communityId").val()},
			success : function(data) {
				$.each(data, function(i, val) {
					$("#buildingid").append(
							"<option name='buildingid'  value="+val.buildingid+">"
									+ val.buildingname + "</option>")
				})
			}

		})
	}else{
		$("#buildingid option:gt(0)").remove();
		$("#unitcount option:gt(0)").remove();
	}
})
//查询单元
$("#buildingid").change(function(){
	if($("#buildingid").val()!=0){
		$("#houseunit option:gt(0)").remove();
		$.ajax({
			url : '../building/getUnitById.json',
			dataType : 'json',
			type : 'POST',
			data:{	buildingid:$("#buildingid").val()},
			success : function(data) {
				for(var i=1;i<=data;i++){
					$("#houseunit").append("<option value="+i+">"+i+"单元</option>")
				}
			}

		})
	}else{
		$("#houseunit option:gt(0)").remove();
	}
})
//下一步
$("#save").click(function(){
	//保存对象到下个网页
	$.ajax({
		//几个参数需要注意一下
		type : "POST",//方法类型
		dataType : "text",//预期服务器返回的数据类型
		url : "../house/savaHouse",
		data : {
			communityId : $("#communityId").val(),
			buildingid : $("#buildingid").val(),
			houseunit : $("#houseunit").val(),
			floor : $("#floor").val(),
			houseno : $("#houseno").val(),
			privatearea : $("#privatearea").val(),
			publicarea : $("#publicarea").val(),
			houseStateid : $("#houseStateid").val()			
		},		
		success : function(result) {
			window.location="../house/doAddNext"
		}
	})
	
})
</script>

	</body>
</html>