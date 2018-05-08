
		//file显示图片
		function showPreview(source) {
			//拿到当前file里的文件
			var file = source.files[0];
			if(window.FileReader) {
				var fr = new FileReader();
				fr.onloadend = function(e) {
					//给当前文件的路径给img
					var img = $(source).parent().find("img").attr("src", e.target.result);
					$(img).show();
				};
				fr.readAsDataURL(file);
				//显示图片成功时创建下一个文件上传区域
				var p = $('<div class="upload" onmousemove="upLoadShow(this)" onmouseout="upLoadHide(this)"><div class="bg" onclick="del(this)"><div class="absolute background"></div><i class="iconfont absolute i_style">&#xe659;</i></div><img class="absolute" id="portrait" src="" style="display:none;" /><input name="communityLogo" type="file" class="file" onchange="showPreview(this)" style="opacity: 0;"/>+</div>');
				$(source).parent().parent().find("p").before(p);
			}
		}
		
		function upLoadShow(upload) {
			var bg = $(upload);
			var src = bg.find("img").attr("src");
			if(src) bg.find(".bg").show();
		}

		function upLoadHide(upload) {
			var bg = $(upload);
			bg.find(".bg").hide();
		}
		function del(upload){
			var bg = $(upload);
			bg.parent().remove();
		
		}