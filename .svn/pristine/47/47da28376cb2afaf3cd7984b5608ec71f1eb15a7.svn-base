<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../css/admin_public.css" />
<link href="../layui/css/layui.css" rel="stylesheet">
<style>
</style>
</head>

<body>
	<section style="width: 96%; background-color: white; margin: 0px auto;">
		<!--
              	作者：ADD
              	时间：2018-04-13
              	描述：车位列表
              -->
		<header>
			<a href=""></a>
			<h2 class="h2" style="">车位管理</h2>
			</a>
		</header>
		<!--主体 -->
		<div id="subject" style="margin: 20px 30px">

			<button class="button noborder">
				<i class="layui-icon btn-icon">&#xe654;</i>添加车位
			</button>
			<div style="float: right;">
				<input id="carno" type="text" placeholder="请输入车位号"
					class="search-keyword" />
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
		$(".button").click(function(){
				//window.location="../building/addBuilding/-1";
				//alert($("#carno").val());
				
			})
		layui.use('element', function() {
			var element = layui.element;
		});
		$(function() {
			page();
		})
		function page() {
			layui.use([ 'layer', 'table' ], function() {
				var table = layui.table;
				var layer = layui.layer;
				table.render({
					elem : '#table',
					url : '../CarStall/stallList.json',
					loading : true,
					where : {
						carno : $("#carno").val()
					},
					cellMinWidth : 80,
					//全局定义常规单元格的最小宽度，layui 2.2.1 新增
					cols : [ [ {
						field : 'carno',
						title : '车位号',	
						align : 'center',
						/*templet : function(d) {
							return d.community.communityName
						}*/
					}, {
						field : 'communityName',
						title : '所属小区',
						align : 'center',
						templet : function(d) {
						return d.community.communityName
					}
					}, {
						field : 'carPortStateName',
						align : 'center',
						title : '车位状态',
						templet : function(d) {
							return d.carPortState.carPortStateName
						}
					}, {
						field : 'area',
						title : '车位面积',
						align : 'center',
						templet : function(d) {
							return d.carport.area
						}
					}, {
						field : 'remark',
						title : '备注',
						align : 'center',						
					}
					,  {
						title : '操作',
						width : 200,
						toolbar : '#barDemo'
					} ] ],
					page : true
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
								url : '../CarStall/deleteCarStall.json',
								type : 'post',
								dataType : 'json',
								data : {
									carid : data.carid
								},
								success : function(data) {
									if (data === 1) {
										layer.msg('删除成功', {icon : 1});
										obj.del();
										layer.close(index);
									} else {
										layer.msg('删除失败,请检查是否有关联信息', {icon : 2});
									}
								}
							})

						});

					}
					if (layEvent === 'edit') {
						window.location="../CarStall/selectStallByCarid?carid="+data.carid+"&communityName="+data.carPortState.carPortStateName;
					
					}

				});
			})
		}
	</script>
</body>

</html>