<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<!DOCTYPE html>
<html>
<base href="<%=basePath%>">
<head>
<meta charset="UTF-8">
<title>添加房屋</title>
<link href="layui/css/layui.css" rel="stylesheet">
<link href="css/admin_public.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</head>
<style>
	
a {
 	color:#000000;
 }
 a:hover{
 	text-decoration: underline;
 }
h2 span{
	color: #1E90FF;
	font-size: 14px;
}
.uploadtext{
margin-top: 12px;
color: #8391a5;
}
.me			
border-bottom: 1px dashed #E0E0E0;
padding: 20px 200px;
			}
.me>input{
padding: 7px 12px;
width: 300px;
border: 1px solid #e5e6e7;
border-radius: 1px;}

.roq{
	width: 350px !important;
	background-color: red;
}
</style>
<body>

	<section style="width: 96%; background-color: white; margin: 0px auto;">
		<!--
              	作者：ADD
              	时间：2018-04-12
              	描述：添加小区1
              -->
		<header>
			 <h2 id="firsth3">添加房屋&nbsp;	<a href="#"><span>(跳过该步骤)</span></a>
              
              </h2>	
		</header>
		<!--主体 -->
		<div id="subject" style="margin: 20px 0 40px 0">
			<form id="fm" action="##" onsubmit="return false" method="post"
				modelAttribute="Community" enctype="multipart/form-data">

				<div class="mess" style="height: 50px;">
					<label style="margin: 20px -105px;">交房时间:</label> <span class="span" style="margin: 0px 102px;">*</span>
					<div  class="layui-form timeBorder" >
								  <div class="layui-form-item noMargin">
								    <div class="layui-inline noMargin">
								      <div class="layui-input-inline">
								        <input type="text" name="cometime" class="layui-input timeInput" id="test1" placeholder="请输入迁入时间" style="margin: -60px 105px; position: absolute; width: 350px;">
								      </div>
								   </div>
								  </div>				  
							</div>
				</div>
				<div class="row ">
					<label>产权年限:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder=""
						name="communityAdmin"/>
				</div>
				
			<div class="row">
					<label style="vertical-align: top;">附件:</label>
					<section class="upload-area">
						<div class="upload" onmousemove="upLoadShow(this)"
							onmouseout="upLoadHide(this)">
							<div class="bg" onclick="del(this)">
								<div class="absolute background"></div>
								<i class="iconfont absolute i_style">&#xe659;</i>
							</div>
							<img class="absolute" id="portrait" src="" style="display: none;" />
							<input name="communityLogo" type="file" class="file"
								onchange="showPreview(this)" style="opacity: 0;" /> +
						</div>

						<div class="uploadtext">
			 					图片大小不可超过2M.
			 				</div>

					</section>

				</div>
				
				
			
				<div class="row">
					<label>备注:</label> <span class="span">*</span> <input
						class="shortInput" type="text" 
						name="communityAdminPhone" />
				</div>
				<div  class="row">
					<label></label>
					<button id="save"  class="button" >
						
							保存					
					</button>
					<button onclick="javascript:history.go(-1)" class="button">返回</button>
				</div>

			</form>


		</div>

	</section>
	<script src="layui/layui.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>

</body>

</html>
