package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.dto.OrdersDTO;
import com.mycompany.webapp.repository.DeliveryRepo;
import com.mycompany.webapp.repository.OrderRepo;

@Service
public class DeliveryService {

	@Resource DeliveryRepo dRepo;

	public void saveDelivery(DeliveryDTO address) {
		dRepo.saveDelivery(address);
		
	}

	public DeliveryDTO selectByPk(int ordersOrderNo) {
		DeliveryDTO delivery = dRepo.selectByPk(ordersOrderNo);
		return delivery;
	}

	
}
