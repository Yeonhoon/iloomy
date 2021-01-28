package com.mycompany.webapp.dto;

public class DeliveryDTO {
	private int deliveryNo;
	private String deliveryCity;
	private String deliveryStreet;
	private String deliveryZipcode;
	private DeliveryStatus deliveryStatus;
	public int getDeliveryNo() {
		return deliveryNo;
	}
	public void setDeliveryNo(int deliveryNo) {
		this.deliveryNo = deliveryNo;
	}
	public String getDeliveryCity() {
		return deliveryCity;
	}
	public void setDeliveryCity(String deliveryCity) {
		this.deliveryCity = deliveryCity;
	}
	public String getDeliveryStreet() {
		return deliveryStreet;
	}
	public void setDeliveryStreet(String deliveryStreet) {
		this.deliveryStreet = deliveryStreet;
	}
	public String getDeliveryZipcode() {
		return deliveryZipcode;
	}
	public void setDeliveryZipcode(String deliveryZipcode) {
		this.deliveryZipcode = deliveryZipcode;
	}
	public DeliveryStatus getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(DeliveryStatus deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	
	@Override
	public String toString() {
		return "DeliveryDTO [deliveryNo=" + deliveryNo + ", deliveryCity=" + deliveryCity + ", deliveryStreet="
				+ deliveryStreet + ", deliveryZipcode=" + deliveryZipcode + ", deliveryStatus=" + deliveryStatus + "]";
	}
	
	
	
}
