package com.ict.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ict.db.DAO;
import com.ict.db.MVO;

@Controller
public class DBController {

	@Autowired
	private DAO dao;

	@RequestMapping("login_ok.do")
	public ModelAndView loginOkCommand(MVO mvo2, HttpServletRequest request) {
		System.out.println(mvo2.getId());
		System.out.println(mvo2.getPw());
		MVO mvo = dao.getLogin(mvo2);
		request.getSession().setAttribute("mvo", mvo);
		if (mvo.getId() == "admin") {
			request.getSession().setAttribute("admin", "ok");
		} else {

			request.getSession().setAttribute("login", "ok");
		}
		return new ModelAndView("redirect:home.do");

	}

	@RequestMapping("search_ok.do")
	public ModelAndView searchOkCommand(@RequestParam("email") String email, @RequestParam("name") String name) {
		ModelAndView mv = new ModelAndView();
		MVO mvo;
		try {
			mvo = dao.getSearch(email, name);
			
				mv.addObject("mvo",mvo);
				mv.setViewName("searchOK");
				return mv;
			
		} catch (Exception e) {
			mv.setViewName("error");
			return mv;
		}

	}

	@RequestMapping("signUp.do")
	public ModelAndView signUpCommand(MVO mvo) {
		ModelAndView mv = new ModelAndView("redirect:login.do");
		int result = dao.getSignUp(mvo);
		return mv;
	}

}
