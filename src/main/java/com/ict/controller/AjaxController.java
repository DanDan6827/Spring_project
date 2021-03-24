package com.ict.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ict.db.DAO;
import com.ict.db.MVO;

@RestController
public class AjaxController {
	@Autowired
	private DAO dao;
	
	@RequestMapping(value = "same_id.do",produces = "text/html; charset=utf-8")
	@ResponseBody
	public String sameIdCommand(@RequestParam("id")String id) {
		System.out.println("ajx컨트롤러 아이디"+id);
			StringBuffer sb = new StringBuffer();
			String ok="";
		try {
			MVO mvo = dao.getSame(id);
			if (mvo==null) {
				
				ok="yes";
				return ok.toString();
			}else {
				ok="no";
				return ok.toString();
			}
			
		} catch (Exception e) {
			
			return ok.toString();
		}
		
	}
}
