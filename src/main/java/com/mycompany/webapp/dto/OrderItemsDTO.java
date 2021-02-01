package com.mycompany.webapp.dto;

import java.util.List;

public class OrderItemsDTO {
	
	private int orderItemsNo;
	private int orderItemsCount;
	private long orderItemsPrice;
	private int orderOrderNo;
	private int itemsItemsNo;
	private List<ItemsDTO> itemList;
	
	public OrderItemsDTO() {
		super();
	}
	
	public OrderItemsDTO(int orderItemsCount, long orderItemsPrice, int itemsItemsNo ) {
		super();
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
		this.itemsItemsNo = itemsItemsNo;
	}
	
	public void setItemsOrder(int orderOrderNo, int itemsItemsNo) {
		this.orderOrderNo = orderOrderNo;
		this.itemsItemsNo = itemsItemsNo;
	}
	
	
	public OrderItemsDTO(int orderItemsCount, long orderItemsPrice, List<ItemsDTO> itemList) {
		super();
		this.orderItemsCount = orderItemsCount;
		this.orderItemsPrice = orderItemsPrice;
		this.itemList = itemList;
	}

	public List<ItemsDTO> getItemList() {
		return itemList;
	}

	public void setItemList(List<ItemsDTO> itemList) {
		this.itemList = itemList;
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

	@Override
	public String toString() {
		return "OrderItemsDTO [orderItemsNo=" + orderItemsNo + ", orderItemsCount=" + orderItemsCount
				+ ", orderItemsPrice=" + orderItemsPrice + ", orderOrderNo=" + orderOrderNo + ", itemsItemsNo="
				+ itemsItemsNo + ", itemList=" + itemList + "]";
	}

	
}
