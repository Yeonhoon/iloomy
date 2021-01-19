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
    private String pPhoto;
    private String pModel;
	private String pManufacture;
	private String pOrigin;
	

	public ProductDTO() {
		super();
	}

	public ProductDTO(long no, String pName, String pCompany, long pPrice, String pContext, String pColor,
			String pOption, String pDetail, String pPhoto, String pModel, String pManufacture, String pOrigin) {
		super();
		this.no = no;
		this.pName = pName;
		this.pCompany = pCompany;
		this.pPrice = pPrice;
		this.pContext = pContext;
		this.pColor = pColor;
		this.pOption = pOption;
		this.pDetail = pDetail;
		this.pPhoto = pPhoto;
		this.pModel = pModel;
		this.pManufacture = pManufacture;
		this.pOrigin = pOrigin;
	}

	public String getpModel() {
		return pModel;
	}

	public void setpModel(String pModel) {
		this.pModel = pModel;
	}

	public String getpManufacture() {
		return pManufacture;
	}

	public void setpManufacture(String pManufacture) {
		this.pManufacture = pManufacture;
	}

	public String getpOrigin() {
		return pOrigin;
	}

	public void setpOrigin(String pOrigin) {
		this.pOrigin = pOrigin;
	}

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
	
	public String getpPhoto() {
		return pPhoto;
	}
	public void setpPhoto(String pPhoto) {
		this.pPhoto = pPhoto;
	}

	@Override
	public String toString() {
		return "ProductDTO [no=" + no + ", pName=" + pName + ", pCompany=" + pCompany + ", pPrice=" + pPrice
				+ ", pContext=" + pContext + ", pColor=" + pColor + ", pOption=" + pOption + ", pDetail=" + pDetail
				+ ", pPhoto=" + pPhoto + ", pModel=" + pModel + ", pManufacture=" + pManufacture + ", pOrigin="
				+ pOrigin + "]";
	}


}
