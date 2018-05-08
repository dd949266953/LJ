<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	作者：offline
	时间：2018-04-12
	描述：首页
-->
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="../css/admin_main.css" rel="stylesheet" />
		<link href="../layui/css/layui.css" rel="stylesheet" />
	</head>

	<body>
		<div>
			<div style="width: 96%;margin: 0px auto;position: relative;">
				<!--
              	作者：offline
              	时间：2018-04-12
              	描述：主体内容从这开始
                                        自己写内容
              -->
				<div id="content_1">
					<div id="row-1">
						<div><i class="iconfont">&#xe62f;</i>快速搜索</div>
						<div class="row_1_2">
							<input type="text" name="title" autocomplete="off" class="layui-input">

							<button class="row_1_3">搜索</button>
						</div>
						<div style="margin-top: 30px;">
							搜索说明：输入姓名、手机、楼宇号、车牌等即可快速搜索
						</div>
					</div>
					<div id="row-2">
						<div><i class="iconfont">&#xe62d;</i>备忘录
							<a class="beiwang_right" href=""><i class="iconfont">&#xe60c;</i>添加</a>
						</div>
						<ul class="row-2_2" style="border: 1.8px solid rgb(240, 240, 240);">
							<li><i class="iconfont">&#xe607;</i><span>明天发布除草任务</span>
								<a class="beiwang_right" href="javascript:void(0)"><i class="iconfont">&#xe618;</i><span>清除</span></span>
								</a>
							</li>
							<li><i class="iconfont">&#xe607;</i><span>201户水龙头维修，需要派人<a class="beiwang_right" href="javascript:void(0)"><i class="iconfont">&#xe618;</i><span>清除</span></span>
								</a>
							</li>
							<li><i class="iconfont">&#xe607;</i><span>公告发布防火灾意识<a class="beiwang_right" href="javascript:void(0)"><i class="iconfont">&#xe618;</i><span>清除</span></span>
								</a>
							</li>
						</ul>
						<center class="row-2_3">
							<a href=""><i class="iconfont">&#xe615;</i></a>
							<a href=""><i class="iconfont">&#xe616;</i></a>
						</center>
					</div>
				</div>
				<div id="content_2">
					<div id="row-3">
						<div><i class="iconfont">&#xe600;</i>收费统计</div>
						<ul id="row-3_2">
							<li>
								<a href="">0</a>
								<h6>未缴账单数量</h6>
							</li>
							<li>
								<a href="">0</a>
								<h6>已缴账单数量</h6>
							</li>
							<li>
								<a href="">￥0.00</a>
								<h6>收入统计金额</h6>
							</li>
							<li style="border: none;">
								<a href="">￥0.00</a>
								<h6>欠费统计金额</h6>
							</li>
						</ul>
					</div>
				</div>
				<div id="content_3">
					<div id="row-4">
						<div>
							<i class="iconfont ">&#xe613;</i>常用功能
						</div>

						<ul class="row-4_ul">
							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：楼宇
                        -->
							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe654;</i>
									<div class="data-p">
										<p class="data-title">楼宇</p>
										<p>
											<b class="data-num">2</b>
											<span>栋</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：房屋
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe614;</i>
									<div class="data-p">
										<p class="data-title">房屋</p>
										<p>
											<b class="data-num">2</b>
											<span>套</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：住户
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe625;</i>
									<div class="data-p">
										<p class="data-title">住户</p>
										<p>
											<b class="data-num">2</b>
											<span>人</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：车位
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe639;</i>
									<div class="data-p">
										<p class="data-title">车位</p>
										<p>
											<b class="data-num">2</b>
											<span>个</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：车辆
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe62b;</i>
									<div class="data-p">
										<p class="data-title">车辆</p>
										<p>
											<b class="data-num">2</b>
											<span>辆</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：员工
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe633;</i>
									<div class="data-p">
										<p class="data-title">员工</p>
										<p>
											<b class="data-num">2</b>
											<span>人</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：客服
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe6d8;</i>
									<div class="data-p">
										<p class="data-title">客服中心</p>
										<p>
											<b class="data-num">2</b>
											<span>条</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：小区公告
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe657;</i>
									<div class="data-p">
										<p class="data-title">小区公告</p>
										<p>
											<b class="data-num">2</b>
											<span>条</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：服务
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe715;</i>
									<div class="data-p">
										<p class="data-title">服务预定</p>
										<p>
											<b class="data-num">2</b>
											<span>条</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：小区商家
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe6bd;</i>
									<div class="data-p">
										<p class="data-title">小区商家</p>
										<p>
											<b class="data-num">2</b>
											<span>个</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：活动
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe650;</i>
									<div class="data-p">
										<p class="data-title">活动</p>
										<p>
											<b class="data-num">2</b>
											<span>个</span>
										</p>
									</div>
								</a>
							</li>

							<!--
                        	作者：offline
                        	时间：2018-04-13
                        	描述：积分商城
                        -->

							<li>
								<a class="row-4_a" href="">
									<i class="data-icon iconfont ">&#xe658;</i>
									<div class="data-p">
										<p class="data-title">积分商城</p>
										<p>
											<b class="data-num">2</b>
											<span>个</span>
										</p>
									</div>
								</a>
							</li>

						</ul>
					</div>
				</div>

				<!--
                	作者：offline
                	时间：2018-04-13
                	描述：右边开始
                -->
				<div style="position: absolute;right:35px;top: 0px;">
					<a href="*"><img src="../img/weishop.png" width="423px" /></a>
					<div class="right_div">
						<div class="right_title">系统消息</div>
						<div class="right_message">
							<ul class="right_ul">
								<li class="right_ul_li">
									<a href="">
										<span>暂无消息</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
                     <!--
                     	作者：offline
                     	时间：2018-04-13
                     	描述：咨询建议
                     -->
					<a href="*" style="margin-bottom: 16px;box-shadow: 0 1px 1px rgba(0,0,0,0.15);color: #999;display: block;background-color: transparent;">
						<div class="zixun">
							<i class="iconfont ">&#xe637;</i>
							<label style="font-size: 16px;cursor: pointer;">咨询及建议</label>
							<span>每个声音都值得聆听</span>
						</div>
					</a>
					<!--
                    	作者：offline
                    	时间：2018-04-13
                    	描述：电话qq
                    -->
						<div style="margin-bottom: 16px;box-shadow: 0 1px 1px rgba(0,0,0,0.15);color: #999;background-color: transparent;">
						<div class="zixun">
							<i class="iconfont ">&#xe60d;</i>
							<label style="font-size: 12px;">客服电话：028-67873870</label>
							<span> 客服QQ： <span style="color:#0a6ebd ;">4006832655</span></span>
						</div>
					</div>
				</div>

			</div>
		</div>
	</body>

</html>