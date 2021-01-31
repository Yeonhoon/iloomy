package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class ItemsImagesDTO {
	private int detail_no;
	private int itemsItemsNo;
	private String detail1;
//	private String detail2;
//	private String detail3;
	private String image1Attachtype;
	private String image1AttachOname;
	private String image1AttachSname;
//	private String image2Attachtype;
//	private String image2AttachOname;
//	private String image2AttachSname;
//	private String image3Attachtype;
//	private String image3AttachOname;
//	private String image3AttachSname;
	private MultipartFile imagesAttach;
	
	public ItemsImagesDTO() {
		super();
	}

	public MultipartFile getImagesAttach() {
		return imagesAttach;
	}
	public void setImagesAttach(MultipartFile imagesAttach) {
		this.imagesAttach = imagesAttach;
	}
	public int getDetail_no() {
		return detail_no;
	}
	public void setDetail_no(int detail_no) {
		this.detail_no = detail_no;
	}
	public int getItemsItemsNo() {
		return itemsItemsNo;
	}
	public void setItemsItemsNo(int itemsItemsNo) {
		this.itemsItemsNo = itemsItemsNo;
	}
	public String getDetail1() {
		return detail1;
	}
	public void setDetail1(String detail1) {
		this.detail1 = detail1;
	}
//	public String getDetail2() {
//		return detail2;
//	}
//	public void setDetail2(String detail2) {
//		this.detail2 = detail2;
//	}
//	public String getDetail3() {
//		return detail3;
//	}
//	public void setDetail3(String detail3) {
//		this.detail3 = detail3;
//	}
	public String getImage1Attachtype() {
		return image1Attachtype;
	}
	public void setImage1Attachtype(String image1Attachtype) {
		this.image1Attachtype = image1Attachtype;
	}
	public String getImage1AttachOname() {
		return image1AttachOname;
	}
	public void setImage1AttachOname(String image1AttachOname) {
		this.image1AttachOname = image1AttachOname;
	}
	public String getImage1AttachSname() {
		return image1AttachSname;
	}
	public void setImage1AttachSname(String image1AttachSname) {
		this.image1AttachSname = image1AttachSname;
	}
//	public String getImage2Attachtype() {
//		return image2Attachtype;
//	}
//	public void setImage2Attachtype(String image2Attachtype) {
//		this.image2Attachtype = image2Attachtype;
//	}
//	public String getImage2AttachOname() {
//		return image2AttachOname;
//	}
//	public void setImage2AttachOname(String image2AttachOname) {
//		this.image2AttachOname = image2AttachOname;
//	}
//	public String getImage2AttachSname() {
//		return image2AttachSname;
//	}
//	public void setImage2AttachSname(String image2AttachSname) {
//		this.image2AttachSname = image2AttachSname;
//	}
//	public String getImage3Attachtype() {
//		return image3Attachtype;
//	}
//	public void setImage3Attachtype(String image3Attachtype) {
//		this.image3Attachtype = image3Attachtype;
//	}
//	public String getImage3AttachOname() {
//		return image3AttachOname;
//	}
//	public void setImage3AttachOname(String image3AttachOname) {
//		this.image3AttachOname = image3AttachOname;
//	}
//	public String getImage3AttachSname() {
//		return image3AttachSname;
//	}
//	public void setImage3AttachSname(String image3AttachSname) {
//		this.image3AttachSname = image3AttachSname;
//	}

	@Override
	public String toString() {
		return "ItemsImagesDTO [detail_no=" + detail_no + ", itemsItemsNo=" + itemsItemsNo + ", detail1=" + detail1
				+ ", image1Attachtype=" + image1Attachtype + ", image1AttachOname=" + image1AttachOname
				+ ", image1AttachSname=" + image1AttachSname + ", imagesAttach=" + imagesAttach + "]";
	}
	
	
	
	
	}
