package com.mycompany.webapp.dto;

import java.util.Date;

public class OrdersDTO {
	private int orderNo;
	private Date ordersDatetime;
	private OrderStatus status;
	private int deliveryDeliveryNo;
	private String membersMembersId;

	public OrdersDTO() {
		super();
	}

	public OrdersDTO(int deliveryDeliveryNo,
			String membersMembersId) {
		super();
		this.deliveryDeliveryNo = deliveryDeliveryNo;
		this.membersMembersId = membersMembersId;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	

	public Date getOrdersDatetime() {
		return ordersDatetime;
	}

	public void setOrdersDatetime(Date ordersDatetime) {
		this.ordersDatetime = ordersDatetime;
	}

	public OrderStatus getStatus() {
		return status;
	}

	public void setStatus(OrderStatus status) {
		this.status = status;
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
		return "OrdersDTO [orderNo=" + orderNo + ", ordersDatetime=" + ordersDatetime + ", status=" + status
				+ ", deliveryDeliveryNo=" + deliveryDeliveryNo + ", membersMembersId=" + membersMembersId + "]";
	}

	

}
