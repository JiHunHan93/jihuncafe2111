package com.jihun.cafe.payment.model.dto;

import java.sql.Date;
import java.util.List;

public class PaymentDivisionDTO {
	
	private int no;
	private int paymentNo;
	private int admissionPayNo;
	private String refundRequest;
	private java.sql.Date refundDate;
	
	public PaymentDivisionDTO() {}

	public PaymentDivisionDTO(int no, int paymentNo, int admissionPayNo, String refundRequest, Date refundDate) {
		super();
		this.no = no;
		this.paymentNo = paymentNo;
		this.admissionPayNo = admissionPayNo;
		this.refundRequest = refundRequest;
		this.refundDate = refundDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getAdmissionPayNo() {
		return admissionPayNo;
	}

	public void setAdmissionPayNo(int admissionPayNo) {
		this.admissionPayNo = admissionPayNo;
	}

	public String getRefundRequest() {
		return refundRequest;
	}

	public void setRefundRequest(String refundRequest) {
		this.refundRequest = refundRequest;
	}

	public java.sql.Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(java.sql.Date refundDate) {
		this.refundDate = refundDate;
	}

	@Override
	public String toString() {
		return "PaymentDivisionDTO [no=" + no + ", paymentNo=" + paymentNo + ", admissionPayNo=" + admissionPayNo
				+ ", refundRequest=" + refundRequest + ", refundDate=" + refundDate + "]";
	}
	
}
