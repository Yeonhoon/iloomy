package com.mycompany.webapp.repository;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UserDTO;

@Repository
public class MemberRepo {

	@Resource
	private SqlSessionTemplate sst;
	
	public int regist(UserDTO user) {
		int tmp = sst.insert("members.regist",user);
		return tmp;
	}

	public Map<String, String> selectById(String id) {
		Map<String, String> member = sst.selectOne("members.selectById", id);
		return member;
	}
	
//	public UserDTO selectById2(String id) {
//		UserDTO member = sst.selectOne("members.selec", id);
//		return member;
//	}


}
