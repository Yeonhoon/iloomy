package com.mycompany.webapp.dto;

import java.util.Date;

public class OrdersDTO {
	private int orderNo;
	private Date orderDatetime;
	private OrderStatus orderStatus;
	private int deliveryDeliveryNo;
	private String membersMembersId;

	public OrdersDTO() {
		super();
	}

	public OrdersDTO(int orderNo, Date orderDatetime, OrderStatus orderStatus, int deliveryDeliveryNo,
			String membersMembersId) {
		super();
		this.orderNo = orderNo;
		this.orderDatetime = orderDatetime;
		this.orderStatus = orderStatus;
		this.deliveryDeliveryNo = deliveryDeliveryNo;
		this.membersMembersId = membersMembersId;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDatetime() {
		return orderDatetime;
	}

	public void setOrderDatetime(Date orderDatetime) {
		this.orderDatetime = orderDatetime;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getDeliveryDeliveryNo() {
		return deliveryDeliveryNo;
	}

	public void setDeliveryDeliveryNo(int deliveryDeliveryNo) {
		this.deliveryDeliveryNo = deliveryDeliveryNo;
	}

	public String getMembersMembersId() {
		return membersMembersId;
	}

	public void setMembersMembersId(String membersMembersId) {
		this.membersMembersId = membersMembersId;
	}

	@Override
	public String toString() {
		return "OrdersDTO [orderNo=" + orderNo + ", orderDatetime=" + orderDatetime + ", orderStatus=" + orderStatus
				+ ", deliveryDeliveryNo=" + deliveryDeliveryNo + ", membersMembersId=" + membersMembersId + "]";
	}

}
