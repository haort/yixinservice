package com.lhdx.www.server.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lhdx.www.server.service.AuthorityService;
import com.lhdx.www.server.service.UserService;

@Controller
@RequestMapping(value = "/service")
public class UserController {


	@Resource(name = "userService")
	private UserService userService;

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public @ResponseBody
	String updateOrAddUser(
			@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "phone", required = false) String phone,
			@RequestParam(value = "xiaoqu", required = false) String xiaoqu,
			@RequestParam(value = "birthday", required = false) String birthday,
			@RequestParam(value = "loudong", required = false) String loudong,
			@RequestParam(value = "danyuan", required = false) String danyuan,
			@RequestParam(value = "room", required = false) String room,
			@RequestParam("wxId") String wxId,
			@RequestParam(value = "comment", required = false) String comment) {
		userService.insertUser(name, phone, null, comment, xiaoqu, wxId,
				birthday);
		return "{success:true,msg:'保存成功!'}";
	}

	@RequestMapping(value = "/ifReg", method = RequestMethod.POST)
	public @ResponseBody
	String ifReg(@RequestParam("wxId") String wxId) {
		return userService.findByWxId(wxId);
	}

	@RequestMapping(value = "/jfqd", method = RequestMethod.POST)
	public @ResponseBody
	Map jfqd(@RequestParam("wxId") String wxId, @RequestParam("jf") String jf) {
		return userService.addjf(wxId, jf);
	}

	@RequestMapping(value = "/ifqd", method = RequestMethod.POST)
	public @ResponseBody
	Map ifqd(@RequestParam("wxId") String wxId) {
		Map<String, Object> map = userService.ifDq(wxId);
		return map;
	}
	
	@RequestMapping(value = "/getJf", method = RequestMethod.POST)
	public @ResponseBody
	String jfqd(@RequestParam("wxId") String wxId) {
		return userService.findUserJfByWxId(wxId);
	}
	
}
