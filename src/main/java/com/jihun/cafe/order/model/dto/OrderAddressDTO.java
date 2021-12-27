package com.jihun.cafe.order.model.dto;

import java.sql.Date;
import java.util.List;

public class OrderAddressDTO {
	
	private int no;
	private int orderDeliNo;
	private String addType;
	private String recieverName;
	private String recieverPhone;
	private String recieverAdd;
	private int memberNo;
	private int memAddNo;
	
	public OrderAddressDTO() {}

	public OrderAddressDTO(int no, int orderDeliNo, String addType, String recieverName, String recieverPhone,
			String recieverAdd, int memberNo, int memAddNo) {
		super();
		this.no = no;
		this.orderDeliNo = orderDeliNo;
		this.addType = addType;
		this.recieverName = recieverName;
		this.recieverPhone = recieverPhone;
		this.recieverAdd = recieverAdd;
		this.memberNo = memberNo;
		this.memAddNo = memAddNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getOrderDeliNo() {
		return orderDeliNo;
	}

	public void setOrderDeliNo(int orderDeliNo) {
		this.orderDeliNo = orderDeliNo;
	}

	public String getAddType() {
		return addType;
	}

	public void setAddType(String addType) {
		this.addType = addType;
	}

	public String getRecieverName() {
		return recieverName;
	}

	public void setRecieverName(String recieverName) {
		this.recieverName = recieverName;
	}

	public String getRecieverPhone() {
		return recieverPhone;
	}

	public void setRecieverPhone(String recieverPhone) {
		this.recieverPhone = recieverPhone;
	}

	public String getRecieverAdd() {
		return recieverAdd;
	}

	public void setRecieverAdd(String recieverAdd) {
		this.recieverAdd = recieverAdd;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getMemAddNo() {
		return memAddNo;
	}

	public void setMemAddNo(int memAddNo) {
		this.memAddNo = memAddNo;
	}

	@Override
	public String toString() {
		return "OrderAddressDTO [no=" + no + ", orderDeliNo=" + orderDeliNo + ", addType=" + addType + ", recieverName="
				+ recieverName + ", recieverPhone=" + recieverPhone + ", recieverAdd=" + recieverAdd + ", memberNo="
				+ memberNo + ", memAddNo=" + memAddNo + "]";
	}
	
}
