package com.jihun.cafe.payment.model.dto;

import java.sql.Date;
import java.util.List;

public class PaymentDTO {
	
	private int no;
	private int finalPrice;
	private int usedPoint;
	private String status;
	private java.sql.Date PaymentDate;
	private int memberNo;
	private int orderNo;

	public PaymentDTO() {}

	public PaymentDTO(int no, int finalPrice, int usedPoint, String status, Date paymentDate, int memberNo,
			int orderNo) {
		super();
		this.no = no;
		this.finalPrice = finalPrice;
		this.usedPoint = usedPoint;
		this.status = status;
		PaymentDate = paymentDate;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getFinalPrice() {
		return finalPrice;
	}

	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}

	public int getUsedPoint() {
		return usedPoint;
	}

	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public java.sql.Date getPaymentDate() {
		return PaymentDate;
	}

	public void setPaymentDate(java.sql.Date paymentDate) {
		PaymentDate = paymentDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "PaymentDTO [no=" + no + ", finalPrice=" + finalPrice + ", usedPoint=" + usedPoint + ", status=" + status
				+ ", PaymentDate=" + PaymentDate + ", memberNo=" + memberNo + ", orderNo=" + orderNo + "]";
	}
	
}
