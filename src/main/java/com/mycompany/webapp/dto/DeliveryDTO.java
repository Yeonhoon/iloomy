package com.mycompany.webapp.dto;

public class DeliveryDTO {
	private int delivery_no;
	private String delivery_city;
	private String delivery_street;
	private String delivert_zipcode;
	private String status;
	public int getDelivery_no() {
		return delivery_no;
	}
	public void setDelivery_no(int delivery_no) {
		this.delivery_no = delivery_no;
	}
	public String getDelivery_city() {
		return delivery_city;
	}
	public void setDelivery_city(String delivery_city) {
		this.delivery_city = delivery_city;
	}
	public String getDelivery_street() {
		return delivery_street;
	}
	public void setDelivery_street(String delivery_street) {
		this.delivery_street = delivery_street;
	}
	public String getDelivert_zipcode() {
		return delivert_zipcode;
	}
	public void setDelivert_zipcode(String delivert_zipcode) {
		this.delivert_zipcode = delivert_zipcode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
