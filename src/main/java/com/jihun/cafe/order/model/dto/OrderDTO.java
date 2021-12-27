package com.jihun.cafe.order.model.dto;

import java.sql.Date;
import java.util.List;

public class OrderDTO {
	
	private int no;
	private java.sql.Date orderDate;
	private String orderTitle;
	private int amountPrice;
	private int memberNo;
	private int existingPoint;

	
	public OrderDTO() {}

	public OrderDTO(int no, Date orderDate, String orderTitle, int amountPrice, int memberNo, int existingPoint) {
		super();
		this.no = no;
		this.orderDate = orderDate;
		this.orderTitle = orderTitle;
		this.amountPrice = amountPrice;
		this.memberNo = memberNo;
		this.existingPoint = existingPoint;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public java.sql.Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(java.sql.Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderTitle() {
		return orderTitle;
	}

	public void setOrderTitle(String orderTitle) {
		this.orderTitle = orderTitle;
	}

	public int getAmountPrice() {
		return amountPrice;
	}

	public void setAmountPrice(int amountPrice) {
		this.amountPrice = amountPrice;
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

	@Override
	public String toString() {
		return "OrderDTO [no=" + no + ", orderDate=" + orderDate + ", orderTitle=" + orderTitle + ", amountPrice="
				+ amountPrice + ", memberNo=" + memberNo + ", existingPoint=" + existingPoint + "]";
	}
	
}
