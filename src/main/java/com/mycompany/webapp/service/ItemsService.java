package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.repository.ItemsRepo;

@Service
public class ItemsService {

	@Resource
	private ItemsRepo itemsRepo;


	public void delete(int bno) {
//		boardrepo.delete(bno);
	}

	public void saveBoard(ItemsDTO dto) {
		itemsRepo.insert(dto);
	}


	public ItemsDTO getItem(int no) {
		ItemsDTO item = itemsRepo.selectByPk(no);
		return item;
	}




}
