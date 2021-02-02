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
    private String itemsModel;
    private int itemsStock;
	private String itemsManufacture;
	private String itemsOrigin;
	private MultipartFile itemsAttach;
	private String itemsAttachtype;
	private String itemsAttachOname;
	private String itemsAttachSname;
	public ItemsDTO() {
		super();
	}
	public ItemsDTO(int itemsNo, String itemsName, String itemsCompany, long itemsPrice, String itemsContext,
			String itemsColor, String itemsOption, String itemsModel, int itemsStock, String itemsManufacture,
			String itemsOrigin, MultipartFile itemsAttach, String itemsAttachtype, String itemsAttachOname,
			String itemsAttachSname) {
		super();
		this.itemsNo = itemsNo;
		this.itemsName = itemsName;
		this.itemsCompany = itemsCompany;
		this.itemsPrice = itemsPrice;
		this.itemsContext = itemsContext;
		this.itemsColor = itemsColor;
		this.itemsOption = itemsOption;
		this.itemsModel = itemsModel;
		this.itemsStock = itemsStock;
		this.itemsManufacture = itemsManufacture;
		this.itemsOrigin = itemsOrigin;
		this.itemsAttach = itemsAttach;
		this.itemsAttachtype = itemsAttachtype;
		this.itemsAttachOname = itemsAttachOname;
		this.itemsAttachSname = itemsAttachSname;
	}
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
	public String getItemsModel() {
		return itemsModel;
	}
	public void setItemsModel(String itemsModel) {
		this.itemsModel = itemsModel;
	}
	public int getItemsStock() {
		return itemsStock;
	}
	public void setItemsStock(int itemsStock) {
		this.itemsStock = itemsStock;
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
	@Override
	public String toString() {
		return "ItemsDTO [itemsNo=" + itemsNo + ", itemsName=" + itemsName + ", itemsCompany=" + itemsCompany
				+ ", itemsPrice=" + itemsPrice + ", itemsContext=" + itemsContext + ", itemsColor=" + itemsColor
				+ ", itemsOption=" + itemsOption + ", itemsModel=" + itemsModel + ", itemsStock=" + itemsStock
				+ ", itemsManufacture=" + itemsManufacture + ", itemsOrigin=" + itemsOrigin + ", itemsAttach="
				+ itemsAttach + ", itemsAttachtype=" + itemsAttachtype + ", itemsAttachOname=" + itemsAttachOname
				+ ", itemsAttachSname=" + itemsAttachSname + "]";
	}
	
	
	
	
	
	

	

}
