package com.mycompany.web.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.mycompany.web.service.Ch09Service;
import com.mycompany.web.service.Ch09Service3;

@Component("ch09Dao3")
public class Ch09Dao3 {
	private static final Logger logger = LoggerFactory.getLogger(Ch09Dao3.class);
	
	public Ch09Dao3() {
		logger.debug("Ch09Dao3 생성");
	}
	
	public void insert() {
		logger.debug("실행");
	}
	
	
}
