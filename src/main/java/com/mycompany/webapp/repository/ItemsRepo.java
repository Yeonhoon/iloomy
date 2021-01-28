package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ItemsDTO;

@Repository
public class ItemsRepo {

	@Resource
	private SqlSessionTemplate sst;
	
	public int insert(ItemsDTO dto) {
		int rows = sst.insert("items.insert", dto);
		return rows;
	}
//

	public ItemsDTO selectByPk(int no) {
		ItemsDTO item = sst.selectOne("items.selectByPk", no);
		return item;
	}

//	public int delete(int bno) {
//		int rows = sst.delete("", bno);
//		return rows;
//	}

}
