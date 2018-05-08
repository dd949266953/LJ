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
<script type="text/javascript" src="js/uploadPhoto.js"></script>
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
				添加小区
				</c:if>
				<c:if test="${id != -1 }">
				修改小区
				</c:if>
			</h2>
		</header>
		<!--主体 -->
		<div id="subject" style="margin: 20px 0 40px 0">
			<fm:form id="fm" action="##" onsubmit="return false" method="post"
				modelAttribute="Community" enctype="multipart/form-data">
				<div class="row">
					<label>小区名称:</label> <span class="span">*</span> <input
						class="shortInput" style="margin-top: 0;" type="text"
						placeholder="请输入小区名称" name="communityName" />
				</div>
				<div class="row">
					<label>小区地址:</label> <span class="span">*</span> <select
						id="province" class="address"></select> <select id="city"
						class="address"></select> <select id="district" class="address"></select>
					<input type="text" class="address" name="communityAddress"
						placeholder="请输入详细地址" style="width: 260px;" /><i
						onclick="position()" class="layui-icon i">&#xe715;</i>
				</div>
				<div class="row">
					<label>客服电话:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="电话格式:028-85905096"
						name="communityServicePhone" />
				</div>
				<div class="row">
					<label>负责人:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="请输入负责人姓名"
						name="communityAdmin" />
				</div>
				<div class="row">
					<label>负责人电话:</label> <span class="span">*</span> <input
						class="shortInput" type="text" placeholder="请输入负责人联系电话"
						name="communityAdminPhone" />
				</div>
				<div class="row">
					<label style="vertical-align: top;">小区LOGO:</label>
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

						<p id="logo">注：该图片在小区微站logo处及生成小区专属二维码时使用，建议尺寸320 x
							320px，支持.jpg、.jpeg、.png格式，小于1M。</p>

					</section>

				</div>
				<div class="row">
					<label style="vertical-align: top;">小区背景图:</label>
					<section class="upload-area">
						<div class="upload" onmousemove="upLoadShow(this)"
							onmouseout="upLoadHide(this)">
							<div class="bg" onclick="del(this)">
								<div class="absolute background"></div>
								<i class="iconfont absolute i_style">&#xe659;</i>
							</div>
							<img class="absolute" id="portrait" src="" style="display: none;" />
							<input name="communityImage" type="file" class="file"
								onchange="showPreview(this)" style="opacity: 0;" /> +
						</div>
						<p id="background">注：该图片在小区微站背景图处使用，建议尺寸 1600 x 1000px，支持.jpg
							.jpeg .png 格式，小于1M</p>
					</section>
				</div>
				<div id="foot" class="row">
					<label></label>
					<button id="save"  class="button">
						<c:if test="${id == -1 }">
							保存
						</c:if>
						<c:if test="${id != -1 }">
							修改
						</c:if>
					</button>
					<button onclick="javascript:history.go(-1)" class="button">返回</button>
				</div>

			</fm:form>
			<div id="map">地图显示区域</div>


		</div>

	</section>
	<script src="layui/layui.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script type="text/javascript">
	$(function(){
		var id="${id}";
		if(id!=-1){
			$.post("Community/getCommunityById/"+id,function(data){
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
				uri="Community/UpdateCommunityById.json";
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
				        			window.location="../Community/doCommunityList.html";			        			
				        		}); 		                    	 
		                    }else{
		                    	layer.alert("操作失败",{icon: 2,shade:0},function(index){
				        			window.location="../Community/addCommunity/${id}";			        			
				        		}); 
		                    } 
		                }
		            })
		}
	});

	


	// 百度地图API功能
	var map = new BMap.Map("map");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 20);  // 初始化地图,设置中心点坐标和地图级别
	var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
	var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
	var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
	var marker = new BMap.Marker(new BMap.Point(116.404,39.915)); // 创建点
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	//添加控件和比例尺
	//	map.addControl(top_left_control);        
		//map.addControl(top_left_navigation);     
		//map.addControl(top_right_navigation);
		map.addOverlay(marker); 
		
</script>

</body>

</html>
