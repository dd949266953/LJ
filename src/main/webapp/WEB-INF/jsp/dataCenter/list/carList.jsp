<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="../css/admin_public.css" />
		<link href="../layui/css/layui.css" rel="stylesheet">
	
	</head>

	<body>
		<section style="width: 96%;background-color: white;margin: 0px auto;">
			<!--
              	作者：ADD
              	时间：2018-04-13
              	描述：车辆列表
              -->
			<header>
				<h2 class="h2">车辆管理</h2>
			</header>
			<!--主体 -->
			<div id="subject" style="margin: 20px  30px">

				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>添加车辆</button>
				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>导入车辆</button>
				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>批量添加收费标准</button>
				<div style="float: right;">
					<input id="carCondition" type="text" placeholder="车牌号/车主姓名" class="search-keyword" />
					<button onclick="page()" class="noborder">
								<i class="layui-icon search">&#xe615;</i>
							</button>
					<button type="submit" class="noborder">
								<i class="layui-icon search">&#xe607;</i>
							</button>
				</div>
				<table style="margin-bottom: 30px;" id="table" lay-filter="table"></table>
				<footer class="fenye p-20"> </footer>
			</div>

		</section>
		<script src="../layui/layui.js"></script>
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
			<script type="text/html" id="barDemo">


		  <a class="layui-btn layui-btn-xs" lay-event="detail">房屋管理</a>

		  <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="edit">编辑</a>

		  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
		</script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
			});
			$(function(){
				page();
			})
			function page(){
				layui.use(['layer', 'table'], function() {
					var table = layui.table;
					var layer = layui.layer;
					table.render({
						elem: '#table',
						url: '../car/getAllCar.json',
						loading : true,
						where : {
							condition:$("#carCondition").val()
						},
						cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
							,
						cols: [
							[{
								field: 'carid',
								align: 'center',
								title: '车辆编号'
							}, {
								field: 'dwa',
								title: '车位号',
								align: 'center',
								templet : function(d) {
									return d.carport.carportno
								}
							}, {
								field: 'stopcarno',
								align: 'center',
								title: '停车卡号',
							}, {
								field: 'userName',
								title: '车主姓名',
								align: 'center',
								templet : function(d) {
									return d.tenement.username
								}
							}, {
								field: 'phone',
								title: '车主电话',
								align: 'center',
								templet : function(d) {
									return d.tenement.phone
								}
							}, {
								field: 'carnumber',
								title: '车牌号',
								align: 'center',					
							}, 
							{
								field: 'carcc',
								title: '车辆排量',
								align: 'center',
							}, {
								title: '操作',
								align: 'center',
								toolbar : '#barDemo'
							}]
						],
						
						page: true
					})
					table.on('tool(table)', function(obj) {
						var data = obj.data; //获得当前行数据
						var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
						var tr = obj.tr; //获得当前行 tr 的DOM对象
						if (layEvent === 'del') {
							layer.confirm('确定要删除吗?', {
								icon : 3,
								title : '提示',
								shade : '0'
							}, function(index) {
								$.ajax({
									url : '../car/deleteCar.json',
									type : 'post',
									dataType : 'json',
									data : {
										carId : data.carid
									},
									success : function(data) {
										if (data.code === 0) {
											layer.msg('删除成功', {
												icon : 1
											});
											obj.del();
											layer.close(index);
										} else {
											layer.msg('删除失败', {
												icon : 2
											});
										}
									}
								})

							});

						}
						if (layEvent === 'edit') {

						}

					});
				})
			}
			
		</script>
	</body>

</html>