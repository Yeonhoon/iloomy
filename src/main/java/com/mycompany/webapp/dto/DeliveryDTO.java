package com.mycompany.webapp.dto;

public class DeliveryDTO {
	private int deliveryNo;
	private AddressDTO address;
	private DeliveryStatus status;
	
	public DeliveryDTO() {
		super();
	}
	
	
	public DeliveryDTO( AddressDTO address, DeliveryStatus status) {
		super();
		this.address = address;
		this.status = status;
	}

	public int getDeliveryNo() {
		return deliveryNo;
	}
	public void setDeliveryNo(int deliveryNo) {
		this.deliveryNo = deliveryNo;
	}
	public AddressDTO getAddress() {
		return address;
	}
	public void setAddress(AddressDTO address) {
		this.address = address;
	}


	public DeliveryStatus getStatus() {
		return status;
	}


	public void setStatus(DeliveryStatus status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "DeliveryDTO [deliveryNo=" + deliveryNo + ", address=" + address + ", status=" + status + "]";
	}


	
	
}
