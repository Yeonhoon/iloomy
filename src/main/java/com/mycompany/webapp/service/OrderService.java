package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.ItemsDTO;
import com.mycompany.webapp.dto.OrderItemsDTO;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.repository.DeliveryRepo;
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
		
		
		ItemsDTO itemdto = itemsRepo.selectByPk(1); // items PK를 이용해 가져 오기
		
		
		/////////////////////////////
		
		
		
		orderItemsDTO.setItemsItemsNo(itemdto.getItemsNo()); //items FK 받음
		System.out.println("service_getItemsNo: "+ itemdto.getItemsNo());
		orderRepo.saveOrderItem(orderItemsDTO);
		
		
		
		
	}
	
	
}
