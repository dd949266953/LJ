<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>微小区</title>
<link rel="stylesheet" href="layui/css/layui.css">
<link rel="stylesheet" href="css/index.css" media="screen"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<script src="js/jquery-3.2.1.js"></script>
<style>


.layui-header .layui-logo, .layui-nav-item>a {
	color: white !important;
}

.layui-header .layui-nav .layui-nav-item a:hover {
	font-size: 16px;
	background-color: rgb(72, 234, 141);
}

.layui-nav-bar {
	opacity: 0 !important;
}

.layui-nav .layui-this::after, .layui-nav-bar, .layui-nav-tree .layui-nav-itemed::after
	{
	height: 0px !important;
}

.layui-body {
	left: 55px;
	overflow-y: hidden;
}

.layui-layout-admin .layui-body {
	bottom: 0px;
}
</style>

</head>
    
<body class="layui-layout-body"
	style="background-color: rgb(237, 244, 245);">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="background-color: rgb(46, 204, 113);">
			<div class="layui-logo ">微小区</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">商品管理</a></li>
				<li class="layui-nav-item"><a href="">用户</a></li>
				<li class="layui-nav-item"><a href="">其它系统</a></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item" style="padding-right: 30px;"><a
					href="javascript:void(0)"> <img src="img/title.png"
						/ style="padding-right: 10px;">精彩源于自信，创新永无止境
				</a></li>
				<li class="layui-nav-item"><a id="suopin" data-method="notice"
					href="javascript:void(0)">🔒锁屏</a></li>
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="img/admin1.jpg" class="layui-nav-img"> 银
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">退了</a></li>
			</ul>
		</div>

		<div id="left-nav" class="layui-side layui-bg">

			<div class="account-l fl">
				<ul id="accordion" class="accordion">
					<li>
						<div class="link">
							<i class="fa fa-leaf"></i>数据中心<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu" id="dataCenter">
							<li><a data="Community/doCommunityList.html">小区列表</a></li>
							<li><a data="building/building.html">楼宇管理</a></li>
							<li><a data="house/doHouse.html">房屋管理</a></li>
							<li><a data="carport/carport.html">车位管理</a></li>
							<li><a data="car/car.html">车辆管理</a></li>
							<li><a data="tenement/tenementList.html">住户列表</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-shopping-cart"></i>物业服务<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li ><a data="notice/doNotice.html">小区公告</a></li>
							<li ><a>查看采购</a></li>
							<li><a>已收到的报价单</a></li>
							<li ><a>我的报价单</a></li>
							<li ><a>已关注的店铺</a></li>
							<li id="concerngood"><a>已关注的商品</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-pencil-square-o"></i>询盘管理<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="buyerxunpanlist"><a>收到的询盘</a></li>
							<li id="publishrequire"><a>我的询盘</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-file-text"></i>订单管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="myorder"><a>我的订单</a></li>
							<li id="myrefund"><a>退款申请</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-globe"></i>金融管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="myloan"><a>我的借贷</a></li>
							<li id="financialmanage"><a>需求申请</a></li>
							<li id="myapplication"><a>我的申请</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-unlock-alt"></i>安全管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="basecomInfo"><a>基本信息</a></li>
							<li id="authenchange"><a>认证信息</a></li>
							<li id="phoneAuth"><a>手机认证</a></li>
							<li id="bankCardAuth"><a>银行卡认证</a></li>
							<li id="emailAuth"><a>邮箱认证</a></li>
							<li id="passwordmodify"><a>密码修改</a></li>
							<li id="paymentpsdmodify"><a>支付密码</a></li>
							<li id="address"><a>收货地址</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-star"></i>评价管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="usercomments"><a>我的评价</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-bell"></i>消息管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="mymsg"><a>我的消息</a></li>
						</ul>
					</li>
					<!-- 视情况而定 -->
					<li>
						<div class="link">
							<i class="fa fa-signal"></i>统计管理<i class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="censusmanager"><a>月贸易量</a></li>
							<li id="statisticmanager"><a>月订单量</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="fa fa-credit-card"></i>白条管理<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li id="oweindex"><a>开通白条</a></li>
							<li id="myIous"><a>我的白条</a></li>
							<li id="louorderlist"><a>订单列表</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div>

		<div class="layui-body">
			<iframe id="center" name="body" src="index/doMain.html" width="100%"
				height="100%" frameborder="0" scrolling="yes"> </iframe>
		</div>
		<script src="layui/layui.js"></script>
		<script src='js/leftnav.js'></script>
		<script>
		
			$(".submenu a").click(function(){
				var src=$(this).attr("data");
				$("#center").attr("src",src);
			})
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
			});

			$("#left-nav").mousemove(function() {
				$("#left-nav").removeClass("close");
			})
			$("#left-nav").mouseleave(function() {
				$("#left-nav").addClass("close");
			})

			layui
					.use(
							'layer',
							function() { //独立版的layer无需执行这一句
								var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

								//触发事件
								var active = {
									notice : function() {
										//示范一个公告层
										layer
												.open({
													type : 1,
													title : false //不显示标题栏
													,
													closeBtn : false,
													area : [ '350px', '200px' ],
													shade : 0.8,
													id : 'LAY_layuipro' //设定一个id，防止重复弹出
													,
													moveType : 0 //拖拽模式，0或者1
													,
													content : '<center class="layui-layer-content"><div style="padding-top:12px;"><img src="img/admin1.jpg" width="70px" style="border-radius: 50%;box-shadow: 0 0 30px #44576b;" /></div><div style="padding-top:12px;">银</div><div style="padding-top:12px;"><input class="layui-input" type="password" style="width: 150px;display: inline-block;	background-color: rgb(244, 244, 244);"/><button id="jiesuo"  class="layui-btn layui-btn" style="display: inline-block;background-color: rgb(72, 234, 141);margin-left:15px;">解锁</button></div><div style="color:red;padding-top:8px;">忘记密码请联系平台管理员</div></center>',
												});
										$("#jiesuo").click(function() {
											//点击解锁的操作
											layer.closeAll();
										})
									}

								};

								$('#suopin').on(
										'click',
										function() {
											var othis = $(this), method = othis
													.data('method');
											active[method] ? active[method]
													.call(this, othis) : '';
										});

							});
		</script>
</body>

</html>
