package com.lhdx.www.server.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lhdx.www.server.service.NoticeService;

@Controller
@RequestMapping(value = "/service")
public class NoticeController {

	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@RequestMapping(value = "/addNotice",method = RequestMethod.POST)
	public @ResponseBody
	String addNotice(
			@RequestParam("title") String title,
			@RequestParam("description") String description,
			@RequestParam("wxId") String wxId) {
		if(noticeService.isAdmin(wxId)){
			noticeService.insertNotice(title, description, wxId);
			return "true";
		}else{
			return "false";
		}
	}
	
	@RequestMapping(value = "/findNotices",method = RequestMethod.POST)
	public @ResponseBody
	List findNoticeById(
			@RequestParam("wxId") String wxId) {
		return noticeService.findNotices(wxId);
	}
	
}
