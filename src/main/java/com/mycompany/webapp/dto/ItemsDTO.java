package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author COM
 *
 */
public class ItemsDTO {
    private int itemsNo;
    private String itemsName;
    private String itemsCompany;
    private long itemsPrice;
    private String itemsContext;
    private String itemsColor;
    private String itemsOption;
    private String itemsDetail;
    private String itemsModel;
    private int itemsStock;

	private String itemsManufacture;
	private String itemsOrigin;
	private MultipartFile itemsAttach;
	private String itemsAttachtype;
	private String itemsAttachOname;
	private String itemsAttachSname;
	
	public int getItemsNo() {
		return itemsNo;
	}
	public void setItemsNo(int itemsNo) {
		this.itemsNo = itemsNo;
	}
	public String getItemsName() {
		return itemsName;
	}
	public void setItemsName(String itemsName) {
		this.itemsName = itemsName;
	}
	public String getItemsCompany() {
		return itemsCompany;
	}
	public void setItemsCompany(String itemsCompany) {
		this.itemsCompany = itemsCompany;
	}
	public long getItemsPrice() {
		return itemsPrice;
	}
	public void setItemsPrice(long itemsPrice) {
		this.itemsPrice = itemsPrice;
	}
	public String getItemsContext() {
		return itemsContext;
	}
	public void setItemsContext(String itemsContext) {
		this.itemsContext = itemsContext;
	}
	public String getItemsColor() {
		return itemsColor;
	}
	public void setItemsColor(String itemsColor) {
		this.itemsColor = itemsColor;
	}
	public String getItemsOption() {
		return itemsOption;
	}
	public void setItemsOption(String itemsOption) {
		this.itemsOption = itemsOption;
	}
	public String getItemsDetail() {
		return itemsDetail;
	}
	public void setItemsDetail(String itemsDetail) {
		this.itemsDetail = itemsDetail;
	}
	public String getItemsModel() {
		return itemsModel;
	}
	public void setItemsModel(String itemsModel) {
		this.itemsModel = itemsModel;
	}
	public String getItemsManufacture() {
		return itemsManufacture;
	}
	public void setItemsManufacture(String itemsManufacture) {
		this.itemsManufacture = itemsManufacture;
	}
	public String getItemsOrigin() {
		return itemsOrigin;
	}
	public void setItemsOrigin(String itemsOrigin) {
		this.itemsOrigin = itemsOrigin;
	}
	
	public MultipartFile getItemsAttach() {
		return itemsAttach;
	}
	public void setItemsAttach(MultipartFile itemsAttach) {
		this.itemsAttach = itemsAttach;
	}
	
	public String getItemsAttachtype() {
		return itemsAttachtype;
	}
	public void setItemsAttachtype(String itemsAttachtype) {
		this.itemsAttachtype = itemsAttachtype;
	}
	public String getItemsAttachOname() {
		return itemsAttachOname;
	}
	public void setItemsAttachOname(String itemsAttachOname) {
		this.itemsAttachOname = itemsAttachOname;
	}
	public String getItemsAttachSname() {
		return itemsAttachSname;
	}
	public void setItemsAttachSname(String itemsAttachSname) {
		this.itemsAttachSname = itemsAttachSname;
	}
	
    public int getItemsStock() {
		return itemsStock;
	}
	public void setItemsStock(int itemsStock) {
		this.itemsStock = itemsStock;
	}
	
	@Override
	public String toString() {
		return "ItemsDTO [itemsNo=" + itemsNo + ", itemsName=" + itemsName + ", itemsCompany=" + itemsCompany
				+ ", itemsPrice=" + itemsPrice + ", itemsContext=" + itemsContext + ", itemsColor=" + itemsColor
				+ ", itemsOption=" + itemsOption + ", itemsDetail=" + itemsDetail + ", itemsModel=" + itemsModel
				+ ", itemsStock=" + itemsStock + ", itemsManufacture=" + itemsManufacture + ", itemsOrigin="
				+ itemsOrigin + ", itemsAttach=" + itemsAttach + ", itemsAttachtype=" + itemsAttachtype
				+ ", itemsAttachOname=" + itemsAttachOname + ", itemsAttachSname=" + itemsAttachSname + "]";
	}

	
	
	

	

}
