package com.mycompany.webapp.dto;

public class OrderItemsDTO {
	
	private int orderItemsNo;
	private int orderItemsCount;
	private int orderItemsPrice;
	private int orderOrderNo;
	private int itemsItemsNo;
	
	public OrderItemsDTO() {
		super();
	}
	
	public OrderItemsDTO(int orderItemsCount, int orderItemsPrice) {
		super();
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
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
	public int getOrderItemsPrice() {
		return orderItemsPrice;
	}
	public void setOrderItemsPrice(int orderItemsPrice) {
		this.orderItemsPrice = orderItemsPrice;
	}
	public int getOrderOrderNo() {
		return orderOrderNo;
	}
	public void setOrderOrderNo(int orderOrderNo) {
		this.orderOrderNo = orderOrderNo;
	}
	public int getItemsItemsNo() {
		return itemsItemsNo;
	}
	public void setItemsItemsNo(int itemsItemsNo) {
		this.itemsItemsNo = itemsItemsNo;
	}
	
	public void setItemsOrder(int orderOrderNo, int itemsItemsNo) {
		this.orderOrderNo = orderOrderNo;
		this.itemsItemsNo = itemsItemsNo;

	}
	

	@Override
	public String toString() {
		return "OrderItemsDTO [orderItemsNo=" + orderItemsNo + ", orderItemsCount=" + orderItemsCount
				+ ", orderItemsPrice=" + orderItemsPrice + ", orderOrderNo=" + orderOrderNo + ", itemsItemsNo="
				+ itemsItemsNo + "]";
	}

	
	
	
	
}
