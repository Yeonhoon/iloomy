package com.mycompany.webapp.dto;

import java.io.Serializable;
import java.util.List;

public class OrderItemsDTO {
	
	private int orderItemsNo;
	private int orderItemsCount;
	private long orderItemsPrice;
	private int ordersOrderNo;
	private int itemsItemsNo;
//	private List<ItemsDTO> itemList;
	private ItemsDTO item;
	private OrdersDTO order;
	private DeliveryDTO delivery;
	
	public OrderItemsDTO() {
		super();
	}
	
	public OrderItemsDTO(int orderItemsCount, long orderItemsPrice, int itemsItemsNo ) {
		super();
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
		this.itemsItemsNo = itemsItemsNo;
	}
	
	public void setItemsOrder(int ordersOrderNo, int itemsItemsNo) {
		this.ordersOrderNo = ordersOrderNo;
		this.itemsItemsNo = itemsItemsNo;
	}
	
	
	public OrderItemsDTO(int orderItemsNo, int orderItemsCount, long orderItemsPrice, int ordersOrderNo, int itemsItemsNo) {
		super();
		this.orderItemsNo = orderItemsNo;
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
		this.ordersOrderNo = ordersOrderNo;
		this.itemsItemsNo = itemsItemsNo;
	}

	public OrderItemsDTO(int orderItemsCount, long orderItemsPrice, ItemsDTO item) {
		super();
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
		this.item = item;
	}



	public DeliveryDTO getDelivery() {
		return delivery;
	}

	public void setDelivery(DeliveryDTO delivery) {
		this.delivery = delivery;
	}

	public OrdersDTO getOrder() {
		return order;
	}

	public void setOrder(OrdersDTO order) {
		this.order = order;
	}

	public void setOrdersOrderNo(int ordersOrderNo) {
		this.ordersOrderNo = ordersOrderNo;
	}

	public int getOrderItemsNo() {
		return orderItemsNo;
	}
	public void setOrderItemsNo(int orderItemsNo) {
		this.orderItemsNo = orderItemsNo;
	}
	public int getOrderItemsCount() {
		return orderItemsCount;
	}
	public void setOrderItemsCount(int orderItemsCount) {
		this.orderItemsCount = orderItemsCount;
	}
	public long getOrderItemsPrice() {
		return orderItemsPrice;
	}
	public void setOrderItemsPrice(long orderItemsPrice) {
		this.orderItemsPrice = orderItemsPrice;
	}
	public int getOrdersOrderNo() {
		return ordersOrderNo;
	}
	public void setOrderOrderNo(int ordersOrderNo) {
		this.ordersOrderNo = ordersOrderNo;
	}
	public int getItemsItemsNo() {
		return itemsItemsNo;
	}
	public void setItemsItemsNo(int itemsItemsNo) {
		this.itemsItemsNo = itemsItemsNo;
	}

	public ItemsDTO getItem() {
		return item;
	}

	public void setItem(ItemsDTO item) {
		this.item = item;
	}

	@Override
	public String toString() {
		return "OrderItemsDTO [orderItemsNo=" + orderItemsNo + ", orderItemsCount=" + orderItemsCount
				+ ", orderItemsPrice=" + orderItemsPrice + ", ordersOrderNo=" + ordersOrderNo + ", itemsItemsNo="
				+ itemsItemsNo + ", item=" + item + "]";
	}

 
}
