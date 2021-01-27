package com.mycompany.webapp.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class testcon {
	
	@Autowired
	private DataSource datasource; // xml에서 datasource property 설정했기 때문에 객체가 이곳에 주입이 됨.
	
	@GetMapping("test")
	public String test() {
		String str ="";
		try {
			// 커넥션 풀에서 커넥션 대여
			Connection conn = datasource.getConnection();
			str +="succ";
			// 대여한 커넨션 반납
			conn.close();
		} catch (SQLException e) {
			str+="fail";
			e.printStackTrace();
		}
		return str;
	}
}
