package com.jihun.cafe.admin.model.dto;

import java.sql.Date;
import java.util.List;

public class MemberBlackListDTO {
	
	private int no;
	private java.sql.Date createdDate;
	private String reasonInfo;
	private String status;
	private int memberNo;

	public MemberBlackListDTO() {}

	public MemberBlackListDTO(int no, Date createdDate, String reasonInfo, String status, int memberNo) {
		super();
		this.no = no;
		this.createdDate = createdDate;
		this.reasonInfo = reasonInfo;
		this.status = status;
		this.memberNo = memberNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public java.sql.Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(java.sql.Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getReasonInfo() {
		return reasonInfo;
	}

	public void setReasonInfo(String reasonInfo) {
		this.reasonInfo = reasonInfo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "MemberBlackListDTO [no=" + no + ", createdDate=" + createdDate + ", reasonInfo=" + reasonInfo
				+ ", status=" + status + ", memberNo=" + memberNo + "]";
	}
	
}
