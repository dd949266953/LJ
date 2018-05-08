<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=basePath%>">
<title>添加住户其他</title>
<link href="css/dataCenter/addCommunity.css" rel="stylesheet" />
<link href="layui/css/layui.css" rel="stylesheet">
<link href="css/admin_public.css" rel="stylesheet" />

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
			 <h2 id="firsth3">住户其他信息&nbsp;	<a href="#" onclick="pass()"><span class="pass">(跳过该步骤)</span></a>
              
              </h2>	
		</header>
		<!--主体 -->
		<div id="subject" style="margin: 20px 0 40px 0">
			<fm:form id="fm" action="##" class="layui-form layui-form-pane" 
			onsubmit="return false" method="post" modelAttribute="Tenement" enctype="multipart/form-data">
			<div class="row">
					<label style="vertical-align: top;">住户照片:</label>
					<section class="upload-area">
						<div class="upload" onmousemove="upLoadShow(this)"
							onmouseout="upLoadHide(this)">
							<div class="bg" onclick="del(this)">
								<div class="absolute background"></div>
								<i class="iconfont absolute i_style">&#xe659;</i>
							</div>
							<img class="absolute" id="portrait" src="" style="display: none;" />
							<input name="userphoto" type="file" class="file"
								onchange="showPreview(this)" style="opacity: 0;" /> +
						</div>

						<p id="background">
			 					图片大小不可超过2M.
			 			</p>

					</section>

				</div>
				<div class="row">
					<label>qq号:</label> 
						<input class="shortInput" type="text" placeholder="请输入住户QQ号" name="userqq" />
				</div>
				<div class="row">
					<label>微信号:</label> 
					<input class="shortInput" type="text" placeholder="请输入住户微信号" name="userwx" />
				</div>
				<div class="row">
					<label>电子邮箱:</label>  <input class="shortInput" type="text" placeholder="请输入住户电子邮箱" name="useremail" />
				</div>
				<div class="row">
					<label>民族:</label>  <input class="shortInput" type="text"  name="nation" />
				</div>
				<div class="row">
					<label>政治面貌:</label>  <input class="shortInput" type="text" name="politicsstatus" />
				</div>
				<div class="row">
					<label>婚姻状态:</label>  <input class="shortInput" type="text" name="maritalstatus" />
				</div>
				<div class="row">
					<label>身份证号:</label>  <input class="shortInput" type="text" name="idnumber" />
				</div>
				<div class="row">
					<label style="vertical-align: top;">身份证图片:</label>
					<section class="upload-area">
						<div class="upload" onmousemove="upLoadShow(this)" onmouseout="upLoadHide(this)">
							<div class="bg" onclick="del(this)">
								<div class="absolute background"></div>
								<i class="iconfont absolute i_style">&#xe659;</i>
							</div>
							<img class="absolute" id="portrait" src="" style="display: none;" />
							<input name="identityphoto" type="file" class="file" onchange="showPreview(this)" style="opacity: 0;" /> +
						</div>

						<div class="uploadtext">
			 					图片大小不可超过2M.
			 				</div>

					</section>

				</div>
			
				<div class="row">
				<label>户口类型:</label>  
					<div class="layui-form-item shortInput select layui-form" lay-filter="hukou" >
					
						<select id="Registeredtype" name="registeredid" >
							
						</select>
					</div>
		
				</div>
			 <div class="row">
					<label>居住类型:</label>  
					<div class="shortInput select layui-form" lay-filter="juzhu">
					<select id="TenementState" name="tenementStateId" >
			 				
			 		</select>
			 		</div>
				</div>
				<div class="row">
					<label>备注:</label>  <input class="shortInput" type="text" name="remark" />
				</div>
				<div  class="row">
					<label></label>
					<button id="save"  class="button">
						
							保存
					</button>
					<button onclick="javascript:history.go(-1)" class="button">返回</button>
				</div>
			</fm:form>
			


		</div>

	</section>
	<script src="layui/layui.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script type="text/javascript" src="js/uploadPhoto.js"></script>
	<script type="text/javascript">
	layui.use(['form'], function(){
		  var form = layui.form	  
	});
	//保存
	$("#save").click(function(){
		var formData = new FormData($("#fm" )[0]);
		  $.ajax({
	            //几个参数需要注意一下
	                type:"POST",//方法类型
	                dataType: "json",//预期服务器返回的数据类型
	                url:"tenement/saveTenement",
	                data:formData,
	                cache: false,  
	                processData: false,  
	                contentType: false, 
	                async: true,    
	                success: function (result) {
	                    
	                }
	       })
	})
	function pass(){
		  $.ajax({
	           //几个参数需要注意一下
	            type:"POST",//方法类型
	            dataType: "json",//预期服务器返回的数据类型
	            url:"tenement/passTenement",  
	            success: function (result) {
	                 if(result===1){
	                  	window.location="tenement/tenementList.html"
	                 }
	             }		
	       })
	}
	$(function(){
		var index='<option value="0">请选择</option>';
		  //户口类型加载
		  $.ajax({
	            //几个参数需要注意一下
	                type:"POST",//方法类型
	                dataType: "json",//预期服务器返回的数据类型
	                url:'Registeredtype/getAllRegisteredType',
	                async: false,    
	                success: function (result) {
	                	 $("#Registeredtype").append(index);
	     				$.each(result,function(i,e){
	     					var option='<option value="'+e.registeredid+'">'+e.registeredname+'</option>';
	     					
	     					$("#Registeredtype").append(option);	 
	     		  		})
	     		  		 layui.form.render('select','hukou');		
	                }
	       })
		  //居住类型加载
		  $.post('tenementState/getAllTenementState',function(result){
			  $("#TenementState").append(index);
			  $.each(result,function(i,e){
					var option='<option value="'+e.tenementStateId+'">'+e.tenementName+'</option>';
					
					$("#TenementState").append(option);	 
		  		})
		  		layui.form.render('select','juzhu');
			  
		  })	  
		var id="${tenementid}";
		$.post('tenement/selectOtherByTenementId/'+id,function(result){
			var uri='<%=basePath%>';
			$("input[name='userphoto']").prev().attr("src",uri+"files/"+result.userphoto).show();
			$("input[name='userqq']").val(result.userqq);
			$("input[name='userwx']").val(result.userwx);
			$("input[name='useremail']").val(result.useremail);
			$("input[name='nation']").val(result.useremail);
			$("input[name='maritalstatus']").val(result.maritalstatus);
			$("input[name='idnumber']").val(result.idnumber);
			$("input[name='identityphoto']").prev().attr("src",uri+"files/"+result.identityphoto).show();
			$("#Registeredtype option[value='"+result.registeredname+"']").attr("selected","selected");
			$("TenementState option[value='"+result.tenementStateId+"']").attr("selected","selected");
			$("input[name='remark']").val(result.remark);
			layui.form.render('select');
		},'json')
	})
	</script>

</body>

</html>
