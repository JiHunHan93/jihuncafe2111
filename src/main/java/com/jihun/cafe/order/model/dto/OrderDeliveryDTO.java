package com.jihun.cafe.order.model.dto;

import java.sql.Date;
import java.util.List;

public class OrderDeliveryDTO {
	
	private int No;
	private String type;
	private int transitNo;
	private java.sql.Date transitDate;
	private int orderNo;

	public OrderDeliveryDTO() {}

	public OrderDeliveryDTO(int no, String type, int transitNo, Date transitDate, int orderNo) {
		super();
		No = no;
		this.type = type;
		this.transitNo = transitNo;
		this.transitDate = transitDate;
		this.orderNo = orderNo;
	}

	public int getNo() {
		return No;
	}

	public void setNo(int no) {
		No = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getTransitNo() {
		return transitNo;
	}

	public void setTransitNo(int transitNo) {
		this.transitNo = transitNo;
	}

	public java.sql.Date getTransitDate() {
		return transitDate;
	}

	public void setTransitDate(java.sql.Date transitDate) {
		this.transitDate = transitDate;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "OrderDeliveryDTO [No=" + No + ", type=" + type + ", transitNo=" + transitNo + ", transitDate="
				+ transitDate + ", orderNo=" + orderNo + "]";
	}
	
}
