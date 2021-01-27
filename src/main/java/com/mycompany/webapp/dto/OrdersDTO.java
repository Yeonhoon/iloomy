package com.mycompany.webapp.dto;

import java.util.Date;

public class OrdersDTO {
	private int order_no;
	private Date order_datetime;
	private String order_status;
	private int delivery_delivery_no;
	private String members_members_id;
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public Date getOrder_datetime() {
		return order_datetime;
	}
	public void setOrder_datetime(Date order_datetime) {
		this.order_datetime = order_datetime;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public int getDelivery_delivery_no() {
		return delivery_delivery_no;
	}
	public void setDelivery_delivery_no(int delivery_delivery_no) {
		this.delivery_delivery_no = delivery_delivery_no;
	}
	public String getMembers_members_id() {
		return members_members_id;
	}
	public void setMembers_members_id(String members_members_id) {
		this.members_members_id = members_members_id;
	}

	
	
	
}
