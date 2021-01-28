package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dto.AddressDTO;
import com.mycompany.webapp.dto.DeliveryDTO;
import com.mycompany.webapp.repository.OrderRepo;

@Service
public class OrderService {

	@Resource OrderRepo orderRepo;

	public void saveDelivery(DeliveryDTO address) {
		orderRepo.saveDelivery(address);
		
	}
	
	
}
