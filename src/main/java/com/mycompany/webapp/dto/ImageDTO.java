package com.mycompany.webapp.dto;

public class ImageDTO {
	private int image_no;
	private String image1;
	private String image2;
	private String image3;
	private int itemsItemsNo;
	
	
	
	public int getImage_no() {
		return image_no;
	}
	public void setImage_no(int image_no) {
		this.image_no = image_no;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public int getItemsItemsNo() {
		return itemsItemsNo;
	}
	public void setItemsItemsNo(int itemsItemsNo) {
		this.itemsItemsNo = itemsItemsNo;
	}
	
	@Override
	public String toString() {
		return "ImageDTO [image_no=" + image_no + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3
				+ ", itemsItemsNo=" + itemsItemsNo + "]";
	}

	
	
	
	
	
}
