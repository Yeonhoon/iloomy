package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.ItemsImagesDTO;
import com.mycompany.webapp.repository.ImagesRepo;

@Service
public class ImagesService {

	@Resource 
	ImagesRepo imagesRepo;
	

	public void saveImages(ItemsImagesDTO imagesDTO) {
		
		imagesRepo.saveImages(imagesDTO);
		
	}

	//메인이미지 불러오기
	public ItemsImagesDTO getMainImage(int no) {
		ItemsImagesDTO image = imagesRepo.selectByItemsItemsNo(no);
		return image;
	}
	
	//세부 이미지 불러오기
	public ItemsImagesDTO getDetailImage(int no) {
		ItemsImagesDTO image = imagesRepo.selectByDetailNo(no);
		return image;
	}

	//세부 내용 수정
	public void updateItem(ItemsImagesDTO imagesDTO) {
		imagesRepo.updateImage(imagesDTO);
		
	}


	
	
}
