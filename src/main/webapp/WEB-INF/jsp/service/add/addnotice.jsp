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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="layui/css/layui.css" rel="stylesheet">
<link href="css/service/addnotice.css" rel="stylesheet" />
</head>
<style>
 .layui-form-switch{
 width:52px;
 }
</style>
<body>
		<div style="margin-top:35px">
			<div style="width: 96%;background-color: white;margin: 0px auto;">
				<!--
              	作者：offline
              	时间：2018-04-12
              	描述：主体内容从这开始
                                        自己写内容
                -->
				<div class="card">
					<div class="card-head">
						添加小区公告
					</div>
					<div>
						<hr>
					</div>
					<div class="card-body">
						<form class="form1" action="">

							<div class="form-1">
								<label class="from-1-label">公告标题：</label>
								<div class="from-1-input">
									<input class="input" placeholder="请输入公告标题" type="text" />
								</div>
							</div>

							<div class="hr"></div>

							<div class="form-1">
								<label class="from-1-label">公告分类：</label>
								<div class="from-1-input">
									<select class="input" id="noticetype">
										<option value="0">请选择分类</option>
									</select>
								</div>
								<div style="display: inline-block;">
									<a style="color:rgb(46,204,113) ;" href="">添加公告分类</a>
								</div>
							</div>

							<div class="hr"></div>

							<div class="from-1">
								<label class="from-1-label" style="vertical-align: top;margin-top: 10px;">公告内容：</label>
								<div class="from-1-input" style="width: 900px;">
									<div style="border: 1px solid #e7e7eb;height: 50px;">
										<ul class="from-1_ul">
											<li data-type="0">
												<a href="">
													<i class="iconfot">&#xe6bc;</i>
													<span>&nbsp;文字</span>
												</a>
											</li>
											<li data-type="0">
												<a href="">
													<img src="../img/textpic.png" />
													<span>&nbsp;图文</span>
												</a>
											</li>
										</ul>
									</div>
									<div id="divone" style="display: none;">
										<div class="divone_text" contenteditable="true">

										</div>
										<div class="divone_title">
											支持换行和空格，最多可输入10000字
										</div>
									</div>							
									<div id="divthree">
										<div class="divone_text" contenteditable="true">
											文字内容
										</div>
										<div id="divthree_1">
											<div id="addpic"><img src="../img/addpic.png" /></div>
										</div>
										<p style="margin: 5px 0px 5px 15px;">图片建议为900*500</p>
									</div>
								</div>
							</div>

							<div class="hr"></div>

							<div class="form-1">
								<label class="from-1-label">是否置顶：</label>
								<div class="from-1-input layui-form" style="height: 50px; display: inline-block;">
									 <input name="close" lay-skin="switch"  type="checkbox">
								</div>
							</div>
							<div class="hr"></div>
							<div >
								<label class="from-1-label" style="padding-top: 15px;"></label>
							<div class="from-1-input" >
								<button class="layui-btn">保存</button>
								<button class="layui-btn">返回</button>
							</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="js/jquery-3.2.1.js"></script>
		<script src="layui/layui.js"></script>
		<script>
			layui.use('form', function() {
				var form = layui.form;

				//各种基于事件的操作，下面会有进一步介绍
			});
		</script>
	</body>

</html>