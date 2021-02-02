package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class NoticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private String noticeUser;
	private MultipartFile noticeAttach;
	private String noticeAttachSname;
	private String noticeAttachOname;
	private String noticeAttachType;


	public NoticeDTO() {
	}

	public NoticeDTO(int noticeNo, String noticeTitle, String noticeContent, Date noticeDate, String noticeUser, MultipartFile noticeAttach, String noticeAttachSname, String noticeAttachOname, String noticeAttachType) {
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.noticeUser = noticeUser;
		this.noticeAttach = noticeAttach;
		this.noticeAttachSname = noticeAttachSname;
		this.noticeAttachOname = noticeAttachOname;
		this.noticeAttachType = noticeAttachType;
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

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeUser() {
		return noticeUser;
	}

	public void setNoticeUser(String noticeUser) {
		this.noticeUser = noticeUser;
	}

	public MultipartFile getNoticeAttach() {
		return noticeAttach;
	}

	public void setNoticeAttach(MultipartFile noticeAttach) {
		this.noticeAttach = noticeAttach;
	}

	public String getNoticeAttachSname() {
		return noticeAttachSname;
	}

	public void setNoticeAttachSname(String noticeAttachSname) {
		this.noticeAttachSname = noticeAttachSname;
	}

	public String getNoticeAttachOname() {
		return noticeAttachOname;
	}

	public void setNoticeAttachOname(String noticeAttachOname) {
		this.noticeAttachOname = noticeAttachOname;
	}

	public String getNoticeAttachType() {
		return noticeAttachType;
	}

	public void setNoticeAttachType(String noticeAttachType) {
		this.noticeAttachType = noticeAttachType;
	}

	@Override
	public String toString() {
		return "NoticeDTO{" +
				"noticeNo=" + noticeNo +
				", noticeTitle='" + noticeTitle + '\'' +
				", noticeContent='" + noticeContent + '\'' +
				", noticeDate=" + noticeDate +
				", noticeUser='" + noticeUser + '\'' +
				", noticeAttach=" + noticeAttach +
				", noticeAttachSname='" + noticeAttachSname + '\'' +
				", noticeAttachOname='" + noticeAttachOname + '\'' +
				", noticeAttachType='" + noticeAttachType + '\'' +
				'}';
	}
}