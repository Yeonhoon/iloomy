package com.mycompany.webapp.repository;

import java.util.List;
import java.util.Map;

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

	public List<OrderItemsDTO> selectItemCart() {
		List<OrderItemsDTO> orderItemLists = sst.selectList("orders.selectItemCart");
		return orderItemLists;
	}

	public int updateOrder(OrderItemsDTO orderItem) {
		int rows = sst.update("orders.updateOrder", orderItem);
		return rows;
		
	}

	public int updateOrderStatus(int ordersOrderNo) {
		int rows = sst.update("orders.updateOrderStatus", ordersOrderNo);
		return rows;
		
	}

	public int updateDeliveryStatus(int ordersOrderNo) {
		int rows = sst.update("orders.updateDeliveryStatus", ordersOrderNo);
		return rows;
	}

	public List<OrderItemsDTO> selectItemOrder() {
		List<OrderItemsDTO> orderItemLists = sst.selectList("orders.selectItemOrder");
		return orderItemLists;
	}

	public OrdersDTO selectOrder(int ordersOrderNo) {
		OrdersDTO order = sst.selectOne("orders.selectOrder", ordersOrderNo);
		return order;
	}

	public OrderItemsDTO getItemOrderPK(int num) {
		OrderItemsDTO ordItem = sst.selectOne("orders.selectordItem", num);
		return ordItem;
	}

	public int updateAddress(Map<String, Object> map) {
		int rows = sst.update("orders.updateAddress", map);
		return rows;
	}
}
