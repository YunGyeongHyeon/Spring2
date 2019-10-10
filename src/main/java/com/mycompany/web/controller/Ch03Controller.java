package com.mycompany.web.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.web.dto.Member;

@Controller
@RequestMapping("/ch03")
public class Ch03Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch03Controller.class);
	
	@RequestMapping("content")
	public String content() {
		
		return "ch03/content";
	}
	/* @DateTimeFormat(pattern="yyyy-MM-dd") */
	@RequestMapping("join")
	public String join(String mid, String mname, String mpassword, @RequestParam(defaultValue="0") int mage, Date mbirth) {
		logger.debug("\n mid : "+mid+"\n mname : "+mname+"\n mpassword : "+mpassword+ "\n mage : "+mage+ "\n mbirth : "+mbirth);
		return "ch03/content";
	}
	
	@RequestMapping("join2")
	public String join2(Member member) {
		logger.debug(
				"\n mid : "+member.getMid()+
				"\n mname : "+member.getMname()+
				"\n mpassword : "+member.getMpassword()+
				"\n mage : "+member.getMage()+
				"\n mbirth : "+member.getMbirth());
		return "ch03/content";
	}
	
	@RequestMapping("join3")
	public String join3(Member member, HttpServletRequest request) {
		logger.debug(
				"\n mid : "+member.getMid()+
				"\n mname : "+member.getMname());
		request.setAttribute("mid", member.getMid());
		request.setAttribute("mname", member.getMname());
		return "ch03/join3";
	}
	
}
