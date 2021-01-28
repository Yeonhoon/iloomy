package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.repository.BoardRepo;

@Service

public class BoardService {

	@Resource
	private BoardRepo boardrepo;


	public void delete(int bno) {
//		boardrepo.delete(bno);
	}


}
