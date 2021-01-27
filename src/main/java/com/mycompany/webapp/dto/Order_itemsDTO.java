package com.mycompany.webapp.dto;

public class Order_itemsDTO {
	
	private int order_items_no;
	private String order_items_count;
	private String order_items_price;
	private String order_order_no;
	private String items_itmes_no;
	public int getOrder_items_no() {
		return order_items_no;
	}
	public void setOrder_items_no(int order_items_no) {
		this.order_items_no = order_items_no;
	}
	public String getOrder_items_count() {
		return order_items_count;
	}
	public void setOrder_items_count(String order_items_count) {
		this.order_items_count = order_items_count;
	}
	public String getOrder_items_price() {
		return order_items_price;
	}
	public void setOrder_items_price(String order_items_price) {
		this.order_items_price = order_items_price;
	}
	public String getOrder_order_no() {
		return order_order_no;
	}
	public void setOrder_order_no(String order_order_no) {
		this.order_order_no = order_order_no;
	}
	public String getItems_itmes_no() {
		return items_itmes_no;
	}
	public void setItems_itmes_no(String items_itmes_no) {
		this.items_itmes_no = items_itmes_no;
	}
	@Override
	public String toString() {
		return "Order_itemsDTO [order_items_no=" + order_items_no + ", order_items_count=" + order_items_count
				+ ", order_items_price=" + order_items_price + ", order_order_no=" + order_order_no
				+ ", items_itmes_no=" + items_itmes_no + "]";
	}
	
	
	
}
