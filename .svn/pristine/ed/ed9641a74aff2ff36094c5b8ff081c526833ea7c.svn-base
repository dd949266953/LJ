<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<link rel="stylesheet" href="css/admin_public.css" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</head>
<body>
	<div class="bady">
		<div class="container">
			<div style="height: auto; margin-top: 35px;">
				<div style="width: 96%; background-color: white; margin: 0px auto;">
					<!--
             权限管理
             
              -->
					<h2 id="firsth3">
						<c:if test="${tenementid == -1 }">
							添加住户
             		 	<small>说明：1、添加单个新住户，如需批量导入请点击“住户列表—住户批量迁入”；2、如已迁出用户需再次迁入，请在住户列表中选中已迁出用户进行操作</small>
						</c:if>
						<c:if test="${tenementid != -1 }">
							修改住户
						</c:if>

					</h2>

				</div>
				<div>
					<div style="border-bottom: 5px solid #E0E0E0;">
						<form id="fm" onsubmit="return false" action="##" method="post">
						<div class="mess">
							<label class="label">关联房屋: <span>*</span></label><span id="detailAddress"></span> <a class="select">
								选择房屋</a> 
								<input name="houseid" value="" type="hidden" />
								<input name="buildid" value="" type="hidden" />
								<input name="communityid" value="" type="hidden" />
								<input name="emergency" value="" type="hidden"/>
								<input name="detail" value="" type="hidden"/>
						</div>
						<div class="mess">
							<label class="label">姓名: <span>*</span></label> <input name="username"
								type="text" placeholder="请输入名字" />
						</div>
						<div class="mess">
							<label class="label">性别 ：<span>*</span></label>
							 <select id="sex" name="sex" style="padding-left: 10px; width: 325px; border: #DEDEDE 1px solid; height: 35px;">
								<option value="请选择">请选择</option>
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
						<div class="mess">
							<label class="label">手机号 ：<span>*</span></label> <input name="phone"
								type="text" placeholder="请输入手机号" />
						</div>
						<div class="mess">
							<label class="label">家庭电话 ：</label> <input name="telephone"
								type="text" placeholder="请输入家庭电话" />
						</div>
						<div class="mess">
							<label class="label">业主卡号：</label> <input name="usercardno"
								type="text" placeholder="请输入业主卡号" />
						</div>
						<div class="mess">
							<label class="label">单位 : </label> <input name="unit" type="text"
								placeholder="请输入公司名字" />
						</div>
						<div class="mess">
							<label class="label">迁入时间 ：</label> 
							<div class="layui-form timeBorder">
								  <div class="layui-form-item noMargin">
								    <div class="layui-inline noMargin">
								      <div class="layui-input-inline">
								        <input type="text" name="cometime" class="layui-input timeInput" id="test1" placeholder="请输入迁入时间">
								      </div>
								   </div>
								  </div>				  
							</div>
							
						</div>
						<div class="mess">
							<label class="label">迁入原因 ：</label> <input name="comecause"
								type="text" placeholder="请输入迁入原因" />
						</div>
						<div id="button">
							<c:if test="${tenementid == -1 }">
							<button id="save" class="button">下一步</button>
							</c:if>
							<c:if test="${tenementid != -1 }">
								<button id="update" class="button">修改</button>
							</c:if>
							<button id="return" onclick="javascript:history.go(-1)" class="button button_return">返回</button>
							<c:if test="${tenementid != -1 }">
								<button  onclick="saveOther()" class="button button_return">修改其他信息</button>
							</c:if>
							
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
<iframe src="reightSide.html" id="right" class="goRight" height="100%"
	frameborder="0" scrolling="yes"></iframe>
<script src="layui/layui.all.js" charset="utf-8"></script>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
//引入时间框
layui.use('laydate', function(){
	  var laydate = layui.laydate; 
	  //常规用法
	  laydate.render({
	    elem: '#test1'
	  });

	});
	
	$(document).bind("click",function(e){       
	    if($(e.target).closest("#right").length == 0 && $(e.target).closest(".select").length == 0){
	        close();
	    }else{
	    	open();
	    }
	})	
	//关闭右侧选项
	function close(){
		$("#right").removeClass("goLeft");
		$("#right").addClass("goRight");
    }
	//打开右侧选项
    function open(){
    	$("#right").removeClass("goRight");
    	$("#right").addClass("goLeft");
    }

	$(function(){	
		var id="${tenementid}";
		if(id!=-1){
			$.post('tenement/selecBasictByTenementId/'+id,function(result){

				var address=result.building.buildingname+"-"+result.house.houseunit+"-"+result.house.houseno;
				$("#detailAddress").html(address);
				$("input[name='username']").val(result.username);
				$("#sex option[value='"+result.sex+"']").attr("selected","selected");
				$("input[name='phone']").val(result.phone);
				$("input[name='telephone']").val(result.telephone);
				$("input[name='usercardno']").val(result.usercardno);
				$("input[name='unit']").val(result.unit);
				$("input[name='cometime']").val(result.cometime);
				$("input[name='comecause']").val(result.comecause);
			},'json')
		}
		
		$("#detailAddress").html($("input[name='detail']").val());
		
	})
	//单机下一步 添加
	$("#save").click(function(){
		var formData = new FormData($("#fm" )[0]);
		  $.ajax({
	            //几个参数需要注意一下
	                type:"POST",//方法类型
	                dataType: "json",//预期服务器返回的数据类型
	                url:"tenement/addTenement",
	                data:formData,
	                cache: false,  
	                processData: false,  
	                contentType: false, 
	                async: true,    
	                success: function (result) {
	                    
	                }
	            })
		window.location="../tenement/addDetailTenement/-1"
		/**
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
		                    if(result.code==0){
		                    	layer.alert(hint,{icon: 1,shade:0},function(index){
				        			window.location="../Community/doCommunityList.html";			        			
				        		}); 		                    	 
		                    }else{
		                    	layer.alert("操作失败",{icon: 2,shade:0},function(index){
				        			window.location="../Community/addCommunity";			        			
				        		}); 
		                    } 
		                }
		            })
		}
		*/
	});
	$("#update").click(function(){
		var id="${tenementid}";
		var formData = new FormData($("#fm" )[0]);  
		  $.ajax({
	            //几个参数需要注意一下
	            type:"POST",//方法类型
	            dataType: "json",//预期服务器返回的数据类型
	            url:'tenement/updateBasicTenement/'+id,
	            data:formData,
	            cache: false,  
	            processData: false,  
	            contentType: false, 
	            async: true,    
	            success: function (result) {
	               if(result.code===0){
	                	layer.alert("修改成功",{icon: 1,shade:0},function(index){
		                	layer.close(index);  
		                	window.location="tenement/tenementList.html";
			        	}); 
	                }else{
	                	layer.alert("修改失败",{icon: 2,shade:0},function(index){
			        						        			
			        	}); 
	               	}	
	              }
	        })
		})
		function saveOther(){
			var id="${tenementid}";
			window.location="tenement/addDetailTenement/"+id
		}
</script>
</html>