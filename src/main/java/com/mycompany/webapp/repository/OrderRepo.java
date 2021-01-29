package com.mycompany.webapp.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrdersDTO;

@Repository
public class OrderRepo {

	@Resource
	private SqlSessionTemplate sst;


	public void saveOrder(OrdersDTO orderDTO) {
		sst.insert("orders.saveOrders", orderDTO);
	}

	public int savedelivery(DeliveryDTO deliveryDTO) {
		int rows = sst.insert("delivery.insertDelivery", deliveryDTO);
		return rows;
	}

	public void saveOrderItem(OrderItemsDTO orderItemsDTO) {
		sst.insert("orders.saveOrderItem", orderItemsDTO);
		
	}
}
