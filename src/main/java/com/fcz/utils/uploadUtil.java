package com.fcz.utils;

import java.io.File;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;




/**
 * 上传文件工具类
 * @author 夏目
 *
 */
public class uploadUtil {
	 
	private  final static Logger logger = LoggerFactory.getLogger(uploadUtil.class);
	 //文件上传
     public static String upload(MultipartHttpServletRequest request,MultipartFile multipartFile) {
    	
 				//获取文件上传的路径
 				String path=request.getServletContext().getRealPath("files");
 				String fileName=multipartFile.getOriginalFilename();//文件名字
 				File file=new File(path+"/"+fileName);//创建要上传后的文件
 				try {
					multipartFile.transferTo(file);
				} catch (Exception e) {
					logger.info("上传失败");
					e.printStackTrace();
				} 
 				return fileName;
 					
 			
 	
	}
}
