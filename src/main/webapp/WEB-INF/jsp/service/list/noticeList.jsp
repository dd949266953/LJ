<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>Insert title here</title>
<style>
.layui-nav {
	background-color: white!important;
}

.a_color {
	color: #000000 !important;
}
</style>
<link href="css/service/notice.css" rel="stylesheet" />
<link rel="stylesheet" href="layui/css/layui.css">
<link rel="stylesheet" href="../css/admin_public.css" />
</head>
<body>
	<div style="margin-top:35px">
		<div style="width: 96%; background-color: white; margin: 0px auto;">
			<!--
              	作者：offline
              	时间：2018-04-12
              	描述：主体内容从这开始
                                        自己写内容
             -->

			<ul class="layui-nav" lay-filter="">
				<li id="lione" class="layui-nav-item"><a class="a_color"
					href="notice/doNotice.html">小区公告</a></li>
				<li class="layui-nav-item "><a class="a_color"
					href="notice/doNoticeType.html">公告分类</a></li>
			</ul>
                
            <hr/>
<div id="subject" style="margin: 20px  30px">

				<button onclick="doAdd()" class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>添加公告</button>
				<div style="float: right;">
					<input id="communityName" type="text" placeholder="请输入公告关键字" class="search-keyword" />
					<button onclick="page()" class="noborder">
								<i class="layui-icon search">&#xe615;</i>
							</button>
					<button type="submit" class="noborder">
								<i class="layui-icon search">&#xe607;</i>
							</button>
				</div>
        
			<table style="margin-top: 10px;" id="table" lay-filter="table"></table>
 	<footer class="fenye p-20">
					
				</footer>
		</div>
	</div>
	<script src="layui/layui.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script>
	  function doAdd(){
		  window.location="../notice/doAddNotice.html"
	  }
		$(function() {
			$("#lione").addClass("layui-this")
		})
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
		layui.use([ 'layer', 'table' ], function() {
			var table = layui.table;
			var layer = layui.layer;
			table.render({
				elem : '#table',
				url : 'dsa',

				cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
				,
				cols : [ [ {
					field : 'id',
					align : 'center',
					title : '公告名称'

				}, {
					field : 'name',
					title : '公告分类',
					align : 'center',
					edit : 'text'
				}, {
					field : 'birthday',
					align : 'center',
					title : '公告内容',

					edit : 'text'
				}, {
					field : 'email',
					title : '添加时间',
					align : 'center',
					edit : 'text',
					sort : true
				}, {
					field : 'phone',
					title : '是否置顶',
					align : 'center',
					edit : 'text'
				}, {
					title : '操作',
					align : 'center',
					templet : '<div>{{d.grade.id}}</div>'
				} ] ],
				page : true
			})
		})
	</script>
</body>
</body>
</html>