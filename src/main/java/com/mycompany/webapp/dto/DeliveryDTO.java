package com.mycompany.webapp.dto;

public class DeliveryDTO {
	private int deliveryNo;
	 private AddressDTO address;
	private DeliveryStatus deliveryStatus;
	
	
	
	
	public DeliveryDTO() {
		super();
	}
	
	
	public DeliveryDTO( AddressDTO address, DeliveryStatus deliveryStatus) {
		super();
		this.address = address;
		this.deliveryStatus = deliveryStatus;
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
	public DeliveryStatus getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(DeliveryStatus deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}


	@Override
	public String toString() {
		return "DeliveryDTO [deliveryNo=" + deliveryNo + ", addressDTO=" + address + ", deliveryStatus="
				+ deliveryStatus + "]";
	}
	
	
	
	
	
}
