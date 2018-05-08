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
              	描述：添加小区
              -->
			<header>
				<h2 class="h2">小区列表</h2>
			</header>
			<!--主体 -->
			<div id="subject" style="margin: 20px  30px">

				<button class="button noborder"><i class="layui-icon btn-icon">&#xe654;</i>添加小区</button>
				<div style="float: right;">
					<input id="communityName" type="text" placeholder="请输入小区名称" class="search-keyword" />
					<button onclick="page()" class="noborder">
								<i class="layui-icon search">&#xe615;</i>
							</button>
					<button type="submit" class="noborder">
								<i class="layui-icon search">&#xe607;</i>
							</button>
				</div>
				<table  id="table" lay-filter="table"></table>
				<footer class="fenye p-20">
					
				</footer>
			</div>

		</section>
		<script src="../layui/layui.js"></script>
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/html" id="barDemo">


		  <a class="layui-btn layui-btn-xs" lay-event="detail">管理</a>






		  <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="edit">编辑</a>

         

		  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
		</script>
		<script>	
			$(".button").click(function(){
				window.location="../Community/addCommunity/-1";
			})
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
						loading:true,
						url: '../Community/getAllCommunity.json',
	                    where:{communityName:$("#communityName").val()},
						cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
							,
						cols: [
							[{
								field:'communityId',
								align: 'center',
								width: 120,
								title: '小区编号',
							},{
								field: 'communityName',
								align: 'center',							
								title: '小区名称',
							},							
							{
								field: 'communityAdmin',
								title: '负责人',
								align: 'center',
							
							}, {
								field: 'communityAdminPhone',
								align: 'center',
								title: '负责人电话',
							
							}, {
								field: 'communityServicePhone',
								title: '客服电话',
								align: 'center',
					
							}, {
								field: 'communityAddress',
								title: '小区地址',
								align: 'center',
								
							}, {
								title: '操作',
								width:160,
								toolbar:'#barDemo'								
							}]
						],			
						page: true
					})
					table.on('tool(table)', function(obj) {
						 var data = obj.data; //获得当前行数据
						 var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
						 var tr = obj.tr; //获得当前行 tr 的DOM对象
                         if(layEvent==='del'){
                        	 layer.confirm('确定要删除吗?', {icon: 3, title:'提示',shade:'0'}, function(index){
                        		 $.ajax({
                        			 url:'../Community/deleteCommunity.json',
                        			 type:'POST',
                        			 dataType:'json',
                        			 data:{
                        				 communityId:data.communityId
                        			 },
                        			 success:function(data){
                        				 if(data===1){
                        					 layer.msg('删除成功',{icon:1});
                        					 obj.del();
                                   		     layer.close(index);
                        				 }else{
                        					 layer.msg('删除失败',{icon:2});
                        				 }
                        			 }
                        		 })
                        		 
                        		});
                        		  
                         }
						 if(layEvent==='edit'){
							 //修改小区
							
							 console.log(data.communityId);
								window.location="../Community/addCommunity/"+data.communityId;
						 }

					});
					
				})
			}
		
		</script>

	</body>

</html>