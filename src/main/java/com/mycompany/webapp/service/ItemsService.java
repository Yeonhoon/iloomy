package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.ImageDTO;
import com.mycompany.webapp.repository.ItemsRepo;

@Service
public class ItemsService {

	@Resource
	private ItemsRepo itemsRepo;


	public void delete(int bno) {
		itemsRepo.delete(bno);
	}

	//
	public void saveBoard(ItemsDTO dto) {
		itemsRepo.insert(dto);
		
	}

	public void getPk(ItemsDTO dto, ImageDTO imagesDTO) {
		//ItemsDTO에서 itemsNo 가져오기. 왜냐하면 PK이므로.
		int itemsNo = dto.getItemsNo();
		imagesDTO.setItemsItemsNo(itemsNo);
		System.out.println(itemsNo);
	}
	
	public ItemsDTO getItem(int no) {
		ItemsDTO item = itemsRepo.selectByPk(no);
		return item;
	}
	public ItemsDTO getItemJoin(int no) {
		ItemsDTO item = itemsRepo.selectJoin(no);
		return item;
	}

	public int updateItem(ItemsDTO dto) {
		int num = itemsRepo.update(dto);
		return num;
	}

	public List<ItemsDTO> getItemsList() {
		List<ItemsDTO> list = itemsRepo.selectAll();
		return list;
	}
	
	public ItemsDTO selectItem(Map<String, String> map) {
		System.out.println("service");
		ItemsDTO item = itemsRepo.selectItem(map);
		return item;
	}

	public int selectSeq() {
		int cnt = itemsRepo.selectSeq();
		return cnt;
	}
}
