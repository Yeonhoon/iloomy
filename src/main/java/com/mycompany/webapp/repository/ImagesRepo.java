package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.ItemsImagesDTO;

@Repository
public class ImagesRepo {

	@Resource
	private SqlSessionTemplate sst;
	
	public int saveImages(ItemsImagesDTO imagesDTO) {
		int rows = sst.insert("items.insertimages", imagesDTO);
		return rows;
	}

	
}
