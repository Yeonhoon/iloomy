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
		UserDTO tmp = mRepo.selectById(user.getId());
		System.out.println("UserDTO : " + tmp.toString());
		System.out.println("UserDTO.주소 : "+ tmp.getAddress().toString());
		if (tmp == null) {
			return "wrongId";
		}
		else if (tmp.getPassWord().equals(user.getPassWord())) {
			return "success";
		} 
			else {
			return "wrongMpassword";
		}
	}

	public UserDTO selectAddress(String userId) {
		UserDTO tmp = mRepo.selectById(userId);
		return tmp;
	}


    public String searchPw(Map<String, String> map) {
		String tmp = mRepo.searchPw(map);
		return tmp;
    }

	public UserDTO userInform(String userId) {
		UserDTO tmp = mRepo.selectById(userId);
		return tmp;
	}

	public int updateUser(Map<String, Object> map) {
		int tmp = mRepo.updateUser(map);
		return tmp;
	}
}
