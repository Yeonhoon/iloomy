package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
    private long no;
    private String pName;
    private String pCompany;
    private long pPrice;
    private String pContext;
    private String pColor;
    private String pOption;
    private String pDetail;
    private MultipartFile pPhoto;


	public long getNo() {
        return no;
    }

    public void setNo(long no) {
        this.no = no;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpCompany() {
        return pCompany;
    }

    public void setpCompany(String pCompany) {
        this.pCompany = pCompany;
    }

    public long getpPrice() {
        return pPrice;
    }

    public void setpPrice(long pPrice) {
        this.pPrice = pPrice;
    }

    public String getpContext() {
        return pContext;
    }

    public void setpContext(String pContext) {
        this.pContext = pContext;
    }

    public String getpColor() {
        return pColor;
    }

    public void setpColor(String pColor) {
        this.pColor = pColor;
    }

    public String getpOption() {
        return pOption;
    }

    public void setpOption(String pOption) {
        this.pOption = pOption;
    }
    
    public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	
	public MultipartFile getpPhoto() {
		return pPhoto;
	}
	public void setpPhoto(MultipartFile pPhoto) {
		this.pPhoto = pPhoto;
	}
}
