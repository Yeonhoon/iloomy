package com.mycompany.webapp.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.UserDTO;
import com.mycompany.webapp.repository.MemberRepo;

@Service
public class MemberService {

	@Resource
	MemberRepo mRepo;

	public int regist(UserDTO user) {
		int tmp = mRepo.regist(user);
		return tmp;
	}

	public String selectById(UserDTO user) {
		System.out.println(user.getId());
		Map<String, String> tmp = mRepo.selectById(user.getId());
		
		if (tmp == null) {
			return "wrongId";
		}
		else if (tmp.get("MEMBERS_PASSWORD").equals(user.getPassWord())) {
			return "success";
		} 
			else {
			return "wrongMpassword";
		}
	}
	
//	public String selectById2(UserDTO user) {
//		System.out.println(user.getId());
//		UserDTO tmp = mRepo.selectById2(user.getId());
//		System.out.println(tmp.toString());
//		return "wrongId";
//		
//	}

}
