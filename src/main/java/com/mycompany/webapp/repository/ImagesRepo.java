package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ImageDTO;

@Repository
public class ImagesRepo {

	@Resource
	private SqlSessionTemplate sst;
	
	public ImageDTO selectByItemsItemsNo(int no) {
		ImageDTO image= sst.selectOne("items.selectByItemsItemsNo", no);
		return image;
	}
	
	public ImageDTO selectByDetailNo(int no) {
		ImageDTO image= sst.selectOne("items.selectByDetailNo", no);
		return image;
	}
	
	public int saveImages(ImageDTO imagesDTO) {
		int rows = sst.insert("items.insertimages", imagesDTO);
		return rows;
	}

	public int updateImage(ImageDTO imagesDTO) {
		int rows = sst.update("items.updateDetail", imagesDTO);
		return rows;
	}

	public int saveImageAndDetail(ImageDTO dto) {
		int tmp = sst.insert("items.saveImageAndDetail",dto);
		return tmp;
	}
}
