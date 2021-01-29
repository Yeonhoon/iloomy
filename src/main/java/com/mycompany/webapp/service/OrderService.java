package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.repository.ItemsRepo;
import com.mycompany.webapp.repository.OrderRepo;

@Service
public class OrderService {

	@Resource OrderRepo orderRepo;
	@Resource ItemsRepo itemsRepo;

	public void saveOrder(OrdersDTO orderDTO) {
		orderRepo.saveOrder(orderDTO);
		
	}


	public void order(String userId, DeliveryDTO deliveryDTO, OrdersDTO orderDTO, OrderItemsDTO orderItemsDTO) {
		//delivery 저장
		orderRepo.savedelivery(deliveryDTO);
		int deliNo = deliveryDTO.getDeliveryNo(); //xml에서 받음
		System.out.println("service_deliNo: " +deliNo);
		
		//orders table 저장
		orderDTO.setDeliveryDeliveryNo(deliNo); //deliNo FK 받음
		orderDTO.setMembersMembersId(userId); // userId FK 받음
		orderRepo.saveOrder(orderDTO);
		System.out.println("service_userId: "+ userId);
		
		//order_items 저장
		int orderNo = orderDTO.getOrderNo(); //xml에서 받음
		orderItemsDTO.setOrderOrderNo(orderNo); //orders FK 받음
		System.out.println("service_orderNo: "+ orderNo);
		orderRepo.saveOrderItem(orderItemsDTO);
		System.out.println(orderItemsDTO.toString());
	}

	public List<OrderItemsDTO> getItemCart() {
		List<OrderItemsDTO> orderItemLists =  orderRepo.selectItemCart();
		for (OrderItemsDTO orderitem : orderItemLists) {
			List <ItemsDTO> itemList = itemsRepo.listByPk(orderitem.getItemsItemsNo());
			orderitem.setItemList(itemList);
		}
		return orderItemLists;
	}
	
	
}