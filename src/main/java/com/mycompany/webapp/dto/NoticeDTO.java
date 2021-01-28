package com.mycompany.webapp.dto;

import java.util.Date;

public class NoticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDatetime;
	private String noticeUser;
	
	
	
	public NoticeDTO() {
		super();
	}

	public NoticeDTO(int noticeNo, String noticeTitle, String noticeContent, Date noticeDatetime, String noticeUser) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDatetime = noticeDatetime;
		this.noticeUser = noticeUser;
	}



	public int getNoticeNo() {
		return noticeNo;
	}



	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}



	public String getNoticeTitle() {
		return noticeTitle;
	}



	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}



	public String getNoticeContent() {
		return noticeContent;
	}



	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}



	public Date getNoticeDatetime() {
		return noticeDatetime;
	}



	public void setNoticeDatetime(Date noticeDatetime) {
		this.noticeDatetime = noticeDatetime;
	}



	public String getNoticeUser() {
		return noticeUser;
	}



	public void setNoticeUser(String noticeUser) {
		this.noticeUser = noticeUser;
	}

	@Override
	public String toString() {
		return "NoticeDTO{" +
				"noticeNo=" + noticeNo +
				", noticeTitle='" + noticeTitle + '\'' +
				", noticeContent='" + noticeContent + '\'' +
				", noticeDatetime=" + noticeDatetime +
				", noticeUser='" + noticeUser + '\'' +
				'}';
	}
}