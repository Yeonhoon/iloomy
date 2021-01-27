package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.UserDTO;
import com.mycompany.webapp.repository.MemberRepo;

@Service
public class MemberService {
	
	@Autowired
	MemberRepo mRepo;
	
	public int regist(UserDTO user) {
		int tmp=mRepo.regist(user);
		return tmp;
	}
	
}
