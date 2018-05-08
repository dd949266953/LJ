<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
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
						<c:if test="${buildingId == -1 }">
                                  添加楼宇
              </c:if>
						<c:if test="${buildingId != -1 }">
                                  修改楼宇
              </c:if>
					</h2>

				</div>
				<hr />
				<div>
					<div style="border-bottom: 5px solid #E0E0E0;">

						<fm:form id="fm" action="##" onsubmit="return false" method="post"
							modelAttribute="building" enctype="multipart/form-data">
							<div class="mess">
								<label>选择小区: <span>*</span></label> <select name="communityid"
									id="communityid"
									style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
									<option value="0">请选择</option>
								</select>
							</div>
							<div class="mess">
								<label>楼宇名称: <span>*</span></label> <input name="buildingname"
								  id="buildingname"
									type="text" placeholder="请输入名称" />
							</div>
							<div class="mess">
								<label>单元数量 ：<span>*</span></label> <input name="unitcount"
								id="unitcount"
									type="text" placeholder="请输入数量" />
							</div>
							<div class="mess">
								<label>楼宇层数 ：<span>*</span></label> <input name="pliescount"
								id="pliescount"
									type="text" placeholder="请输入楼宇层数" />
							</div>
							<div class="mess">
								<label>楼宇类型 ：<span>*</span></label> <select
									name="buildingtypeid" id="buildingtypeid"
									style="width: 325px; border: #DEDEDE 1px solid; height: 35px;">
									<option value="0">请选择</option>

								</select>
							</div>
							<div class="mess">
								<label>楼宇结构：<span>*</span></label> <input
									name="buildingStructure"  id="buildingStructure" type="text"
									placeholder="请输入楼宇结构,例如：三室一厅/二室一厅" />
							</div>
							<div class="mess">
								<label>楼宇朝向 ：<span>*</span></label> <input name="buildingaspect"
								id="buildingaspect"
									type="text" placeholder="请输入楼宇朝向" />
							</div>
							<div class="mess">
								<label>备注 ：<span>*</span></label> <input name="buildingremark"
								id="buildingremark"
									type="text" />
							</div>

							<div id="button">
								<c:if test="${buildingId == -1 }">
									<button id="save" class="button">保存</button>
								</c:if>
								<c:if test="${buildingId != -1 }">
									<button id="save" class="button">修改</button>
								</c:if>
								<button id="return" class="button">返回</button>
							</div>
						</fm:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="layui/layui.all.js" charset="utf-8"></script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		$(function() {
			//查询小区
			$.ajax({
				url : '../Community/getAllCommunityName.json',
				dataType : 'json',
				type : 'POST',
				success : function(data) {
					$.each(data, function(i, val) {
						$("#communityid").append(
								"<option name='communityid'  value="+val.communityId+">"
										+ val.communityName + "</option>")
					})
				}

			})
			//查询类型
			$.ajax({
				url : '../buildingType/getAllBuildingType.json',
				dataType : 'json',
				type : 'POST',
				success : function(data) {
					$.each(data, function(i, val) {
						$("#buildingtypeid").append(
								"<option  name='buildingtypeid' value="+val.buildingtypeid+">"
										+ val.buildingtypename+ "</option>")
					})
				}

			})
			if('${buildingId}'!=-1){
				$.ajax({
					url:'../building/getBuildingById',
					dataType: 'json',
					type:'post',
					data:{
						buildingId:'${buildingId}'
					},
				    success:function(data){
				    	$("#communityid").val(data.communityid);
				    	$("#buildingname").val(data.buildingname);
				    	$("#unitcount").val(data.unitcount);
				    	$("#pliescount").val(data.pliescount);
				    	$("#buildingtypeid").val(data.buildingtypeid);
				    	$("#buildingStructure").val(data.buildingStructure);
				    	$("#buildingaspect").val(data.buildingaspect);
				    	$("#buildingremark").val(data.buildingremark);
				    }
				})
			}
		})
		
		$("#save").click(function() {
			var hint = "添加成功";
			var uri = "../building/addBuilding.json";	
			layer.load(2, {
				time : 10 * 200
			});
			var formData = new FormData($("#fm")[0]);
			if('${buildingId}'!=-1){
				hint='修改成功';
				uri="../building/updateBuilding.json/"+'${buildingId}';
			}
			$.ajax({
				//几个参数需要注意一下
				type : "POST",//方法类型
				dataType : "json",//预期服务器返回的数据类型
				url : uri,
				data : formData,
				cache : false,
				processData : false,
				contentType : false,
				async : true,
				success : function(result) {
					if (result == 1) {
						layer.alert(hint, {
							icon : 1,
							shade : 0
						}, function(index) {
                        window.location='../building/building.html'
						});
					} else {
						layer.alert("操作失败", {
							icon : 2,
							shade : 0
						}, function(index) {
					    window.location='../building/addBuilding/'+'${buildingId}';
						});
					}
				}
			})
		})
	</script>
</body>

</html>