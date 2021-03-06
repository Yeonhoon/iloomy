package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.OrdersDTO;

@Repository
public class DeliveryRepo {

	@Resource
	private SqlSessionTemplate sst;

	public void saveDelivery(DeliveryDTO address) {
		sst.insert("delivery.insertDelivery", address);
		
	}

	public DeliveryDTO selectByPk(int ordersOrderNo) {
		DeliveryDTO delivery = sst.selectOne("delivery.selecyByPk", ordersOrderNo);
		return delivery;
	}

	public DeliveryDTO selectByNo(int deliveryNo) {
		DeliveryDTO delivery = sst.selectOne("delivery.selectByNo", deliveryNo);
		return delivery;
	}

}
