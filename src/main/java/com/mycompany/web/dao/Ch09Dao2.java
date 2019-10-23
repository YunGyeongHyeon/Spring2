package com.mycompany.web.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.mycompany.web.service.Ch09Service;
import com.mycompany.web.service.Ch09Service2;

@Component("ch09Dao2")
public class Ch09Dao2 {
	private static final Logger logger = LoggerFactory.getLogger(Ch09Dao2.class);
	
	public Ch09Dao2() {
		logger.debug("Ch09Dao2 생성");
	}
	
	public void insert() {
		logger.debug("insert 실행");
	}
	
	
}
