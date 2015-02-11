package com.lhdx.www.server.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lhdx.www.server.service.AuthorityService;


@Controller
@RequestMapping(value = "/service")
public class ViewController {
	
	@RequestMapping(value = "/getProduct", method = RequestMethod.GET)
	public ModelAndView getProduct(int productId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product");
		if (productId == 0) {
			mv.addObject("productPic", "product_1.jpg");
			mv.addObject("productName", "移动电源");
			mv.addObject("productScore", "500");
			mv
					.addObject(
							"productDes",
							"产品名称：MIUI/小米 10400mAh移动电...品牌: MIUI/小米型号: 10400mAh移动电源 NDY-02-AD颜色分类: 蓝色 金色 红色 银色电池容量: 10001mAh(含)-15000mAh(含)电池类型: 锂离子电池");
		} else if (productId == 1) {
			mv.addObject("productPic", "product_2.jpg");
			mv.addObject("productName", "羊年挂历");
			mv.addObject("productScore", "10");
			mv.addObject("productDes", "太湖世家定制羊年挂历，祝广大业主新春快乐");
		}
		return mv;
	}

	@RequestMapping(value = "/getTypography", method = RequestMethod.GET)
	public ModelAndView getTypography() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("typography");
		return mv;
	}

	@RequestMapping(value = "/getJfsc", method = RequestMethod.GET)
	public ModelAndView getJfsc(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jfsc");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}

	@RequestMapping(value = "/getAd", method = RequestMethod.GET)
	public ModelAndView getAd(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ad");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}

	@RequestMapping(value = "/getCkcontact", method = RequestMethod.GET)
	public ModelAndView getCkcontact(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ckcontact");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getAdCkcontact", method = RequestMethod.GET)
	public ModelAndView getAdCkcontact(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adCkcontact");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getNotice", method = RequestMethod.GET)
	public ModelAndView getNotice(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cknotice");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getContact", method = RequestMethod.GET)
	public ModelAndView getContact(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	@RequestMapping(value = "/getDc", method = RequestMethod.GET)
	public ModelAndView getDc(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dc");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getDocontact", method = RequestMethod.GET)
	public ModelAndView getDocontact(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("docontact");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getHelp", method = RequestMethod.GET)
	public ModelAndView getHelp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("help");
		return mv;
	}
	
	@RequestMapping(value = "/getIndex", method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value = "/getFbNotice", method = RequestMethod.GET)
	public ModelAndView getFbNotice(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getQd", method = RequestMethod.GET)
	public ModelAndView getQd(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("qd");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getReg", method = RequestMethod.GET)
	public ModelAndView getReg(String wxId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reg");
		if (wxId != null && !"".equals(wxId)) {
			mv.addObject("wxId", wxId);
		}
		return mv;
	}
	
	@RequestMapping(value = "/getTest", method = RequestMethod.GET)
	public ModelAndView getTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test");
		return mv;
	}
	
}
