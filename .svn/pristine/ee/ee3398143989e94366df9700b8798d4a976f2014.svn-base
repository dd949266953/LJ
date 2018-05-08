<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
              	描述：房屋列表
              -->
			<header>
				<h2 class="h2">房屋管理</h2>
			</header>
			<!--主体 -->
			<div id="subject" style="margin: 20px  30px">

				<button onclick="addhouse()" class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>添加房屋</button>
				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>导入房屋</button>
				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>批量添加收费标准</button>
				<div style="float: right;">
					<input  id="condition" type="text" placeholder="请输入房号" class="search-keyword" />
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
			function addhouse(){
				window.location='../house/doAorU/-1'
			}
			$(function(){
				page()
			})
			function page(){
				layui.use(['layer', 'table'], function() {
					var table = layui.table;
					var layer = layui.layer;
					table.render({
						elem: '#table',
						url: '../house/getAllHouse.json',
						loading : true,
						where : {
							houseno : $("#condition").val()					
						},
						cellMinWidth: 80,
						cols: [
							[{
								field: 'houseid',
								align: 'center',
								title: '房屋编号'

							}, {
								field: 'buildingName',
								title: '所属小区',
								align: 'center',
								templet : function(d) {
								  return d.community.communityName
								}
							},
							{
								field: 'buildingName',
								align: 'center',
								title: '楼宇',
								templet: function(d){
									return d.building.buildingname
								}
							},{
								field:'houseunit',
								align:'center',
								title:'单元'
							},
							{
								field:'houseno',
								align:'center',
								title:'房号'
							},{
								field:'privatearea',
								align:'center',
								title:'建筑面积'
							},{
								field:'type',
								align:'center',
								title:'房屋状态',
								templet: function(d){
									return d.houseState.housestatetype
								}
							}
							,{
									field:'floor',
									align:'center',
									title:'所在楼层'
								},{
									title : '操作',
									width : 200,
									toolbar : '#barDemo'
								}
							
							]
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
									url : '../house/deleteHouseById.json',
									type : 'post',
									dataType : 'json',
									data : {
										houseId : data.houseid
									},
									success : function(data) {
										if (data == 1) {
											layer.msg('删除成功', {
												icon : 1
											});
											obj.del();
											layer.close(index);
										} else {
											layer.msg('操作失败，请先删除关联信息', {
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