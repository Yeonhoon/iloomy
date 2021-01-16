package com.mycompany.webapp.dto;

import java.util.Date;

public class QnADTO {
	private int qnaNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaUserid;
	private Date qnaDatetime;

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public String getQnaUserid() {
		return qnaUserid;
	}

	public void setQnaUserid(String qnaUserid) {
		this.qnaUserid = qnaUserid;
	}

	public Date getQnaDatetime() {
		return qnaDatetime;
	}

	public void setQnaDatetime(Date qnaDatetime) {
		this.qnaDatetime = qnaDatetime;
	}

	public QnADTO(int qnaNo, String qnaTitle, String qnaContent, String qnaUserid, Date qnaDatetime) {
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaUserid = qnaUserid;
		this.qnaDatetime = qnaDatetime;
	}

	@Override
	public String toString() {
		return "QnADTO{" +
				"qnaNo=" + qnaNo +
				", qnaTitle='" + qnaTitle + '\'' +
				", qnaContent='" + qnaContent + '\'' +
				", qnaUserid='" + qnaUserid + '\'' +
				", qnaDatetime=" + qnaDatetime +
				'}';
	}
}