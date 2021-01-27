package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class ItemsDTO {
    private int items_no;
    private String items_Name;
    private String items_Company;
    private long items_Price;
    private String items_Context;
    private String items_Color;
    private String items_Option;
    private String items_Detail;
    private String items_Mainphoto;
    private String items_Model;
	private String items_Manufacture;
	private String items_Origin;
	
	public int getItems_no() {
		return items_no;
	}
	public void setItems_no(int items_no) {
		this.items_no = items_no;
	}
	public String getItems_Name() {
		return items_Name;
	}
	public void setItems_Name(String items_Name) {
		this.items_Name = items_Name;
	}
	public String getItems_Company() {
		return items_Company;
	}
	public void setItems_Company(String items_Company) {
		this.items_Company = items_Company;
	}
	public long getItems_Price() {
		return items_Price;
	}
	public void setItems_Price(long items_Price) {
		this.items_Price = items_Price;
	}
	public String getItems_Context() {
		return items_Context;
	}
	public void setItems_Context(String items_Context) {
		this.items_Context = items_Context;
	}
	public String getItems_Color() {
		return items_Color;
	}
	public void setItems_Color(String items_Color) {
		this.items_Color = items_Color;
	}
	public String getItems_Option() {
		return items_Option;
	}
	public void setItems_Option(String items_Option) {
		this.items_Option = items_Option;
	}
	public String getItems_Detail() {
		return items_Detail;
	}
	public void setItems_Detail(String items_Detail) {
		this.items_Detail = items_Detail;
	}

	public String getItems_Mainphoto() {
		return items_Mainphoto;
	}
	public void setItems_Mainphoto(String items_Mainphoto) {
		this.items_Mainphoto = items_Mainphoto;
	}
	public String getItems_Model() {
		return items_Model;
	}
	public void setItems_Model(String items_Model) {
		this.items_Model = items_Model;
	}
	public String getItems_Manufacture() {
		return items_Manufacture;
	}
	public void setItems_Manufacture(String items_Manufacture) {
		this.items_Manufacture = items_Manufacture;
	}
	public String getItems_Origin() {
		return items_Origin;
	}
	public void setItems_Origin(String items_Origin) {
		this.items_Origin = items_Origin;
	}
	@Override
	public String toString() {
		return "ItemsDTO [items_no=" + items_no + ", items_Name=" + items_Name + ", items_Company=" + items_Company
				+ ", items_Price=" + items_Price + ", items_Context=" + items_Context + ", items_Color=" + items_Color
				+ ", items_Option=" + items_Option + ", items_Detail=" + items_Detail + ", items_Mainphoto="
				+ items_Mainphoto + ", items_Model=" + items_Model + ", items_Manufacture=" + items_Manufacture
				+ ", items_Origin=" + items_Origin + "]";
	}
	
	

	

}
