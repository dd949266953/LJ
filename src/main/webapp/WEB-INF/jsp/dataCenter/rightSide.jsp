<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="layui/css/layui.css" rel="stylesheet">
		<link rel="stylesheet" href="css/admin_public.css" />
		<link rel="stylesheet" href="css/rightSide.css" />
		<link rel="stylesheet" href="layui/css/layui.css" media="all">
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/vue.js"></script>
		<script src="layui/layui.all.js" charset="utf-8"></script>
		<script src="layui/layui.js" charset="utf-8"></script>
	</head>

	<body>
		<aside>
			<header id="header">
				<a class="active">选择房屋</a>
				<i class="bind iconfont" onclick="exit()">&#xe619;</i>
			</header>
			<section style="float: left;">
				<div class="chat_search">
					<i class="layui-icon">&#xe615;</i>
					<input id="search_input" class="shortInput" type="text" placeholder="搜索" />
				</div>
				<form class="layui-form layui-form-pane"" action="">
				<div class="slimScrollDiv">
					<!-- 小区级  start-->
					<ul class="tree_list">
						<li id="communityVue">
							<div class="community"  v-for="c in communityList">
								<label class="title" onclick="getBuild(this)" v-bind:id="c.communityId">
									{{c.communityName}}
									<span class="iconfont span communitySpan">&#xe65a;</span>			
								</label>
								 			
								<ul class="child_tree building" style="display:none">
									
								</ul>	
								
								
							</div>				
						</li>
					</ul>
					<!-- 小区级 end -->
				</div>
				</form>
				<footer>
					<button class="button btn">保存</button>
					<button class="button btn" style=" color: #333;background-color: #fff;box-shadow: 0 2px 5px rgba(0,0,0,.16),0 2px 10px rgba(0,0,0,.12);">保存</button>
				</footer>
			</section>

		</aside>
		
	<script>
	//获取所有小区
		layui.use(['form'], function(){
				  var form = layui.form
				  form.on('radio()', function (data) {
					 	//当前房屋房号
						var houseno=data.value;
					 	//房屋id
					 	var houseid=$(this).parents(".paddingNone").attr("id");
						//当前房屋单元
						var unit=$.trim($(this).parents(".unit").find(".padding-left40").prop('firstChild').nodeValue);
						//当前楼宇id
						var buildid=$.trim($(this).parents(".build").find(".padding-left40").attr("id"));
						var buildName=$.trim($(this).parents(".build").find(".padding-left40").prop('firstChild').nodeValue);
						//当前小区id
						var communityid=$.trim($(this).parents(".community").find(".title").attr("id"));
						//详细住址
						var address=buildName+"-"+unit+"-"+houseno;
						window.parent.$("input[name='houseid']").val(houseid);
						window.parent.$("input[name='buildid']").val(buildid);
						window.parent.$("input[name='detail']").val(address);
						window.parent.$("input[name='communityid']").val(communityid);
						window.parent.$("#detailAddress").text(address);
						window.parent.$("input[name='emergency']").val($("select[name='interest'] option:selected").val());
				 });
				  form.on('select()', function (data) {  
					    emergency = data.value;  
					    window.parent.$("input[name='emergency']").val(emergency);
					});
			});
		$(function(){
			var community =null;
			community = new Vue({
	    		el : "#communityVue" , 
	    		data : {
	    			communityList : null
	    		}			
	    	});
			$.ajax({
				type:"POST",//方法类型
				url: '../Community/getAllCommunityName.json',
	            success: function (result) {
	            	community.communityList=result;
	            }
			})
		})
		
		var communityflag=true;
		var buildflag=true;
		var Unitflag=true;
		var houseNoflag=true;
		//获取点击小区下的所有楼宇
		function getBuild(community){
			//当前点击小区
			var community=$(community).parent(".community");
			//该小区下楼宇列表
			var buildList=community.find(".building");
			//获取点击对象下的字体图标内容
			var iconfont=community.find(".communitySpan");
			if(communityflag==true){				
				jia(iconfont);
				//当前小区ID
				var communityId=community.find(".title").attr("id");
				buildList.children().remove();
				$.post('building/getAllBuildingByCommunityid.json',{'communityid':communityId},function(result){
					$.each(result,function(i,e){
						var builds='<li class="build">'
									+'	<label class="padding-left40" id="'+e.buildingid+'" onclick="getHouseUnit(this)">'
									+'	'+e.buildingname+''
									+'		<span class="iconfont span padding-left15">&#xe65a;</span>'
									+'	</label>'
									+'	<ul class="child_nodes btn houseUnit" style="display:none">'
									+'	</ul>'
									+'</li>';
							buildList.append(builds);
					})
				},'json')
				buildList.show();
				communityflag=!communityflag;
			}else{
				jian(iconfont);
				buildList.hide();
				communityflag=!communityflag;			
			}	
		}
		//获取点击楼宇下的单元列表
		function getHouseUnit(build){
			var build=$(build);
			//获取楼宇下 单元列表
			var houseUnit=build.siblings(".houseUnit");
			//字体图标
			var iconfont=build.find("span");
			if(buildflag==true){
				//当前楼宇id
				var buildingId=build.attr("id");
				houseUnit.children().remove();
				jia(iconfont);
				$.post('house/getHouseByBuilding.json',{'buildingId':buildingId},function(result){
					$.each(result,function(i,e){
						var Unit='<li class="unit">'
							 	 +'		<label class="padding-left40" id="'+e.houseunit+'" onclick="getHouse(this)">'
							     +'			'+e.houseunit+'单元'
								 +'			<span class="iconfont span padding-left15">&#xe65a;</span>'
							 	 +'		</label>'
							 	 +'		<ul class="child_nodes btn houseno" style="display:none">'
							 	 +'		</ul>'
								 +'</li>';
							houseUnit.append(Unit);
					});	
				},'json')
				houseUnit.show();
				buildflag=!buildflag;
			}else{			
				jian(iconfont);
				houseUnit.hide();
				buildflag=!buildflag;
			}
		}
		
		//获取所选单元下所有房屋
		function getHouse(unit){
			var unit=$(unit);
			//获取楼宇下 单元列表
			var housenos=unit.siblings(".houseno");
			//字体图标
			var iconfont=unit.find("span");
			if(Unitflag==true){
				//当前单元
				var unit=unit.attr("id");
				housenos.children().remove();
				jia(iconfont);
				$.post('house/getHouseNnit.json',{'houseUnit':unit},function(result){
					
					$.each(result,function(i,e){
						
						var house='<label class="padding-left15 paddingNone" id="'+e.houseid+'">'
							 	 +'			<div class="layui-form-item margin">'
							 	 +'				<div class="layui-input-block margin">'
							 	 +' 					<input type="radio" name="houseno" value="'+e.houseno+'" title="'+e.houseno+'">'
							 	 +'			 	</div>'
							 	 +'  		</div>'
							   	 +'			<div class="layui-form-item margin selectEmergency">'
							     +'				<select name="interest" lay-filter="aihao">'
							   	 +'				</select>'
								 +'			</div>'
							 	 +'</label>';
						housenos.append(house);
					});	
					layui.use(['form'], function(){
						  var form = layui.form
						 form.render("radio");	  
					});
				},'json')
				$.post('EmergencyContact/getAll.json',function(result){
					var select=$("select[name='interest']");
					select.children().remove();
					
					$.each(result,function(i,e){
						var option='<option value="'+e.emergencyId+'">'+e.emergencyName+'</option>';
						select.append(option);	 
						});
					layui.use(['form'], function(){
						  var form = layui.form
						 form.render("select");	  
					});
				});
				
				housenos.show();
				Unitflag=!Unitflag;
			}else{			
				jian(iconfont);
				housenos.hide();
				Unitflag=!Unitflag;
			}
		}
		
		//字体图标+
		function jia(e){
			$(e).html("&#xe63f;");
		}
		//字体图标-
		function jian(e){
			$(e).html("&#xe65a;");
		}
		//关闭右侧窗口
		function exit(){
			var right=window.parent.$("#right");
			right.removeClass("goLeft");
			right.addClass("goRight");;	   
		}
		</script>
	</body>

</html>