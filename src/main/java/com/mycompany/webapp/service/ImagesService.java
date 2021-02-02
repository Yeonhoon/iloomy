package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.ImageDTO;
import com.mycompany.webapp.repository.ImagesRepo;

@Service
public class ImagesService {

	@Resource 
	ImagesRepo imagesRepo;
	

	public void saveImages(ImageDTO imagesDTO) {
		
		imagesRepo.saveImages(imagesDTO);
		
	}

	//메인이미지 불러오기
	public ImageDTO getDetailImage(int no) {
		ImageDTO image = imagesRepo.selectByItemsItemsNo(no);
		return image;
	}

	//세부 내용 수정
	public int updateItem(ImageDTO imagesDTO) {
		int result = imagesRepo.updateImage(imagesDTO);
		return result;
		
	}


	public int saveImageAndDetail(ImageDTO dto) {
		int tmp =imagesRepo.saveImageAndDetail(dto);
		return tmp;
	}
}
