package com.jihun.cafe.member.model.dto;

import java.sql.Date;
import java.util.List;

public class MemberPointDTO {
	
	private int no;
	private String changedType;			//포인트 지급인지 사용인지 구분
	private int paymentNo;				//사용한 경우 추적가능한 주문정보
	private java.sql.Date modifyDate;	//변경이력 날짜
	private int modifyPoint;			//변경 후 포인트
	private int memberNo;				//해당 회원
	private int existingPoint;			//변경 전 포인트
	private String columnName;			//이력변경 컬럼명

	
	public MemberPointDTO() {}
	
	public MemberPointDTO(String changedType, Date modifyDate, int existingPoint, int modifyPoint, int memberNo, String columnName) {
		this.changedType = changedType;
		this.modifyDate = modifyDate;
		this.existingPoint = existingPoint;
		this.modifyPoint = modifyPoint;
		this.memberNo = memberNo;
		this.columnName = columnName;
	}

	public MemberPointDTO(int no, String changedType, int paymentNo, Date modifyDate, int modifyPoint, int memberNo,
			int existingPoint, String columnName) {
		super();
		this.no = no;
		this.changedType = changedType;
		this.paymentNo = paymentNo;
		this.modifyDate = modifyDate;
		this.modifyPoint = modifyPoint;
		this.memberNo = memberNo;
		this.existingPoint = existingPoint;
		this.columnName = columnName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getChangedType() {
		return changedType;
	}

	public void setChangedType(String changedType) {
		this.changedType = changedType;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public java.sql.Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(java.sql.Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getModifyPoint() {
		return modifyPoint;
	}

	public void setModifyPoint(int modifyPoint) {
		this.modifyPoint = modifyPoint;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getExistingPoint() {
		return existingPoint;
	}

	public void setExistingPoint(int existingPoint) {
		this.existingPoint = existingPoint;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	@Override
	public String toString() {
		return "MemberPointDTO [no=" + no + ", changedType=" + changedType + ", paymentNo=" + paymentNo
				+ ", modifyDate=" + modifyDate + ", modifyPoint=" + modifyPoint + ", memberNo=" + memberNo
				+ ", existingPoint=" + existingPoint + ", columnName=" + columnName + "]";
	}
	
}
