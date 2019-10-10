package com.mycompany.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.web.dto.Ch06Board;

@Controller
@RequestMapping("/ch06")
public class Ch06Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch06Controller.class);
	
	@RequestMapping("content")
	public String content() {
		
		return "ch06/content";
	}
	
	@PostMapping("login")
	public String login(String mid, String mpassword, HttpSession session) {
		String loginResult = "";
		if(mid.equals("admin")) {
			if(mpassword.equals("iot12345")) {
				loginResult = "success";
			}else {
				loginResult = "wrongMpassword";
			}
		}else {
			loginResult = "worngMid";
		}
		session.setAttribute("loginResult", loginResult);
		
		return "redirect:/ch06/content";
		
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginResult");
		return "redirect:/ch06/content";
	}
	
	@RequestMapping("fileDownload")
	public void filedownload(HttpServletResponse response , String fname ,HttpServletRequest request) throws Exception {
		//응답 헤더에 추가
		//본문 내용이 json일 경우는 type이 다르게
		response.setHeader("Content-Type", "image/jpeg;charset=UTF-8");
		ServletContext application = request.getServletContext();
		String mimeType = application.getMimeType(fname);
		
		String userAgent = request.getHeader("User-Agent");
		String downloadName = "";
		logger.debug(userAgent);
		if(userAgent.contains("Trident/7.0") || userAgent.contains("MSIE")) {
			//IE11 이하 버전 또는 IE10이하 버전에서 한글 파일을 복원하기 위해
			downloadName = URLEncoder.encode(fname,"UTF-8");
			
		}else {
			//WebKt 기반 브라우저(Chrom, Safari, FireFox, Opera, Edge)에서 한글 파일을 복원하기 위해
			downloadName = new String(fname.getBytes("UTF-8"), "ISO-8859-1");
		}
		
		logger.debug("여기에 있따"+downloadName);
		response.setHeader("Content-Disposition", "attachment; filename=\""+downloadName+"\"");
		//response.setHeader("Content-Length", "10000");
		//위 경우와는 다르게 변수명 없이 값만 적용
		//response.setContentType("image/png");
		
		//응단 본문에 추가
		
		//결국 아래 애들은 application여기다 context위치를 넣고 realPath여기다 뽑으려는 이미지/영상 위치와 이름을 넣는다. 
		OutputStream pw = response.getOutputStream();
		String realPath = application.getRealPath("/resources/image/"+fname);
		InputStream is = new FileInputStream(realPath);
		File file = new File(realPath);
		response.setHeader("Content-Length", String.valueOf(file));
		
		byte[] buffer = new byte[1024];
		while(true) {
			int readByte = is.read(buffer);
			if(readByte == -1) break;
			pw.write(buffer, 0, readByte);
		}
		pw.flush();
		pw.close();
		is.close();
	}
	
	@RequestMapping("jsonDownload1")
	public String jsonDownload1(Model model) {
		Ch06Board board = new Ch06Board();
		board.setBno(1);
		board.setBtitle("집가고 싶다.");
		board.setBcontent("집좀 보내줘");
		board.setWriter("학생들");
		board.setDate(new Date());
		board.setHitcount(1);
		
		model.addAttribute("board",board);
		
		return "ch06/jsonDownload1";
	}
	
	@RequestMapping("jsonDownload2")
	public void jsonDownload2(HttpServletResponse response) throws Exception {
		Ch06Board board = new Ch06Board();
		board.setBno(300);
		board.setBtitle("취업좀");
		board.setBcontent("쉬는시가니 업서..");
		board.setWriter("본인");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		board.setDate(new Date());
		board.setHitcount(1);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("bno", board.getBno());
		jsonObject.put("btitle", board.getBtitle());
		jsonObject.put("bcontent", board.getBcontent());
		jsonObject.put("writer", board.getWriter());
		jsonObject.put("date", sdf.format(board.getDate()));
		jsonObject.put("hitcount", board.getHitcount());
		String json = jsonObject.toString();
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.write(json);
		pw.flush();
		pw.close();
		
	}
}
