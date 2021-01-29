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


	
	
}
