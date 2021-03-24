package com.ict.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	@RequestMapping("home.do")
	public ModelAndView homeCommand() {
		return new ModelAndView("HGhome");
	}	

@RequestMapping("mypost.do")
public ModelAndView RequestCommand() {
	return new ModelAndView("HGmypost");
}
@RequestMapping("notice.do")
public ModelAndView noticeCommand() {
	return new ModelAndView("HGnoticeboard");
}
@RequestMapping("siteinfo.do")
public ModelAndView siteinfoCommand() {
	return new ModelAndView("HGsiteinfo");
}
@RequestMapping("service.do")
public ModelAndView serviceCommand() {
	return new ModelAndView("HGservice");
}
@RequestMapping("service_write.do")
public ModelAndView servicewriteCommand() {
	return new ModelAndView("HGservice_write");
}
@RequestMapping("develop.do")
public ModelAndView developCommand() {
	return new ModelAndView("HGdevelop");
}
@RequestMapping("gallery.do")
public ModelAndView galleryCommand() {
	return new ModelAndView("HGgallery");
}
@RequestMapping("info.do")
public ModelAndView infoCommand() {
	return new ModelAndView("HGinfo");
}
@RequestMapping("point.do")
public ModelAndView pointCommand() {
	return new ModelAndView("HGpoint");
}
@RequestMapping("point_plus.do")
public ModelAndView point_plusCommand() {
	return new ModelAndView("HGpoint_plus");
}
@RequestMapping("login.do")
public ModelAndView loginCommand() {
	return new ModelAndView("HGlogin");
}
@RequestMapping("logout.do")
public ModelAndView logoutCommand(HttpServletRequest request) {
	request.getSession().invalidate();
	return new ModelAndView("redirect:home.do");
}
@RequestMapping("unity.do")
public ModelAndView unityCommand() {
	return new ModelAndView("HGUnity");
}
@RequestMapping("notice_onelist.do")
public ModelAndView nonelistCommand() {
	return new ModelAndView("HGnotice_onelist");
}
@RequestMapping("notice_write.do")
public ModelAndView noticewriteCommand() {
	return new ModelAndView("HGnotice_write");
}
@RequestMapping("service_onelist.do")
public ModelAndView serviceOnelistCommand() {
	return new ModelAndView("HGservice_onelist");
}
@RequestMapping("search.do")
public ModelAndView searchCommand() {
	return new ModelAndView("HGsearch");
}

}
