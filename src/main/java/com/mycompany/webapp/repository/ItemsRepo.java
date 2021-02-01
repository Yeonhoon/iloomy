package com.mycompany.webapp.repository;

import java.util.List;
import java.util.Map;

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

	public ItemsDTO selectByPk(int no) {
		ItemsDTO item = sst.selectOne("items.selectByPk", no);
		return item;
	}

	public int update(ItemsDTO dto) {
		int rows = sst.update("items.update",dto);
		return rows;
	}

	public List<ItemsDTO> selectAll() {
		List<ItemsDTO> list = sst.selectList("items.selectAll");
		return list;
	}

	public List<ItemsDTO> listByPk(int itemsItemsNo) {
		List<ItemsDTO> list = sst.selectList("items.listByPk", itemsItemsNo);
		return list;
	}

	public ItemsDTO selectItem(Map<String, String> map) {
		ItemsDTO item = sst.selectOne("items.selectItem",map);
		return item;
	}

	public ItemsDTO selectJoin(int no) {
		ItemsDTO item = sst.selectOne("items.selectJoin",no);
		return item;
	}

	public void delete(int no) {
		sst.delete("items.delete",no);
	}
}
