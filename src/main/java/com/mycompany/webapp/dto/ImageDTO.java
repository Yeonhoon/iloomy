package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class ImageDTO {
    private int imageNo;
    private String detail1;
    private String detail2;
    private String detail3;
    private MultipartFile imageAttach1;
    private String imageAttachSname1;
    private String imageAttachOname1;
    private String imageAttachType1;
    private MultipartFile imageAttach2;
    private String imageAttachSname2;
    private String imageAttachOname2;
    private String imageAttachType2;
    private MultipartFile imageAttach3;
    private String imageAttachSname3;
    private String imageAttachOname3;
    private String imageAttachType3;
    private int itemsItemsNo;

    public ImageDTO() {
    }

    public ImageDTO(int imageNo, String detail1, String detail2, String detail3, MultipartFile imageAttach1, String imageAttachSname1, String imageAttachOname1, String imageAttachType1, MultipartFile imageAttach2, String imageAttachSname2, String imageAttachOname2, String imageAttachType2, MultipartFile imageAttach3, String imageAttachSname3, String imageAttachOname3, String imageAttachType3, int itemsItemsNo) {
        this.imageNo = imageNo;
        this.detail1 = detail1;
        this.detail2 = detail2;
        this.detail3 = detail3;
        this.imageAttach1 = imageAttach1;
        this.imageAttachSname1 = imageAttachSname1;
        this.imageAttachOname1 = imageAttachOname1;
        this.imageAttachType1 = imageAttachType1;
        this.imageAttach2 = imageAttach2;
        this.imageAttachSname2 = imageAttachSname2;
        this.imageAttachOname2 = imageAttachOname2;
        this.imageAttachType2 = imageAttachType2;
        this.imageAttach3 = imageAttach3;
        this.imageAttachSname3 = imageAttachSname3;
        this.imageAttachOname3 = imageAttachOname3;
        this.imageAttachType3 = imageAttachType3;
        this.itemsItemsNo = itemsItemsNo;
    }

    public int getImageNo() {
        return imageNo;
    }

    public void setImageNo(int imageNo) {
        this.imageNo = imageNo;
    }

    public String getDetail1() {
        return detail1;
    }

    public void setDetail1(String detail1) {
        this.detail1 = detail1;
    }

    public String getDetail2() {
        return detail2;
    }

    public void setDetail2(String detail2) {
        this.detail2 = detail2;
    }

    public String getDetail3() {
        return detail3;
    }

    public void setDetail3(String detail3) {
        this.detail3 = detail3;
    }

    public MultipartFile getImageAttach1() {
        return imageAttach1;
    }

    public void setImageAttach1(MultipartFile imageAttach1) {
        this.imageAttach1 = imageAttach1;
    }

    public String getImageAttachSname1() {
        return imageAttachSname1;
    }

    public void setImageAttachSname1(String imageAttachSname1) {
        this.imageAttachSname1 = imageAttachSname1;
    }

    public String getImageAttachOname1() {
        return imageAttachOname1;
    }

    public void setImageAttachOname1(String imageAttachOname1) {
        this.imageAttachOname1 = imageAttachOname1;
    }

    public String getImageAttachType1() {
        return imageAttachType1;
    }

    public void setImageAttachType1(String imageAttachType1) {
        this.imageAttachType1 = imageAttachType1;
    }

    public MultipartFile getImageAttach2() {
        return imageAttach2;
    }

    public void setImageAttach2(MultipartFile imageAttach2) {
        this.imageAttach2 = imageAttach2;
    }

    public String getImageAttachSname2() {
        return imageAttachSname2;
    }

    public void setImageAttachSname2(String imageAttachSname2) {
        this.imageAttachSname2 = imageAttachSname2;
    }

    public String getImageAttachOname2() {
        return imageAttachOname2;
    }

    public void setImageAttachOname2(String imageAttachOname2) {
        this.imageAttachOname2 = imageAttachOname2;
    }

    public String getImageAttachType2() {
        return imageAttachType2;
    }

    public void setImageAttachType2(String imageAttachType2) {
        this.imageAttachType2 = imageAttachType2;
    }

    public MultipartFile getImageAttach3() {
        return imageAttach3;
    }

    public void setImageAttach3(MultipartFile imageAttach3) {
        this.imageAttach3 = imageAttach3;
    }

    public String getImageAttachSname3() {
        return imageAttachSname3;
    }

    public void setImageAttachSname3(String imageAttachSname3) {
        this.imageAttachSname3 = imageAttachSname3;
    }

    public String getImageAttachOname3() {
        return imageAttachOname3;
    }

    public void setImageAttachOname3(String imageAttachOname3) {
        this.imageAttachOname3 = imageAttachOname3;
    }

    public String getImageAttachType3() {
        return imageAttachType3;
    }

    public void setImageAttachType3(String imageAttachType3) {
        this.imageAttachType3 = imageAttachType3;
    }

    public int getItemsItemsNo() {
        return itemsItemsNo;
    }

    public void setItemsItemsNo(int itemsItemsNo) {
        this.itemsItemsNo = itemsItemsNo;
    }

    @Override
    public String toString() {
        return "ImageDTO{" +
        		"itemsItemsNo=" + itemsItemsNo +
                ",imageNo=" + imageNo +
                ", detail1='" + detail1 + '\'' +
                ", detail2='" + detail2 + '\'' +
                ", detail3='" + detail3 + '\'' +
                ", imageAttach1=" + imageAttach1 +
                ", imageAttachSname1='" + imageAttachSname1 + '\'' +
                ", imageAttachOname1='" + imageAttachOname1 + '\'' +
                ", imageAttachType1='" + imageAttachType1 + '\'' +
                ", imageAttach2=" + imageAttach2 +
                ", imageAttachSname2='" + imageAttachSname2 + '\'' +
                ", imageAttachOname2='" + imageAttachOname2 + '\'' +
                ", imageAttachType2='" + imageAttachType2 + '\'' +
                ", imageAttach3=" + imageAttach3 +
                ", imageAttachSname3='" + imageAttachSname3 + '\'' +
                ", imageAttachOname3='" + imageAttachOname3 + '\'' +
                ", imageAttachType3='" + imageAttachType3 + '\'' +
                '}';
    }
}
