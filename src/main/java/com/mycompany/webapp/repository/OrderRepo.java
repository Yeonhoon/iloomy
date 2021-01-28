package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;

@Repository
public class OrderRepo {

	@Resource
	private SqlSessionTemplate sst;

	public void saveDelivery(DeliveryDTO address) {
		sst.insert("delivery.saveDelivery", address);
		
	}
}
