package com.fcz.controller.dataCenter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("notice")
@Controller
public class NoticeController {
    /**
     * 跳转到公告页面
     * @return
     */
	@RequestMapping("doNotice.html")
	public String doNotice() {
		return "service/list/noticeList";
	}
	
	  /**
     * 跳转到公告类型
     * @return
     */
	@RequestMapping("doNoticeType.html")
	public String doNoticeType() {
		return "service/list/noticeType";
	}
	/**
	 * 跳转到添加公告页面
	 * @return
	 */
	@RequestMapping("doAddNotice.html")
	public String doAddNotice() {
		return "service/add/addnotice";
	}
	
}
