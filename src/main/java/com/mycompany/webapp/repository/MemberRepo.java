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
	
	public UserDTO selectById(String id) {
		UserDTO member = sst.selectOne("members.selectById", id);
		System.out.println(member.toString());
		return member;
	}


    public String searchPw(Map<String, String> map) {
		String tmp = sst.selectOne("members.searchPw", map);
		return tmp;
    }

	public int updateUser(Map<String, Object> map) {
		int tmp = sst.update("members.updateUser",map);
		return tmp;
	}
}
