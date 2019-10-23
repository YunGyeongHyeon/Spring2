package com.mycompany.web.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.mycompany.web.service.Ch09Service;

@Component("ch09Dao")
public class Ch09Dao {
	private static final Logger logger = LoggerFactory.getLogger(Ch09Dao.class);
	
	public Ch09Dao() {
		logger.debug("Ch09Dao 생성");
	}
	
	public void insert() {
		logger.debug("insert 실행");
	}
	
	
}
