package com.mycompany.webapp.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UserDTO;

@Repository
public class MemberRepo {

	@Autowired
	private SqlSessionTemplate sst;
	
	public int regist(UserDTO user) {
		int tmp = 0;
		return tmp;
	}

}
