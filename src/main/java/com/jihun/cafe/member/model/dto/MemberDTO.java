package com.jihun.cafe.member.model.dto;

import java.sql.Date;

public class MemberDTO {
	
	private int no;
	private String name;
	private String id;
	private String pwd;
	private String pno;
	private String gender;
	private String email;
	private String address;
	private String phone;
	private String subPhone;
	private int point;
	private java.sql.Date enrollDate;
	private java.sql.Date modifiedDate;
	private String blackList;
	private String status;
	  
	/* 장바구니 추가되야함 */
	
	public MemberDTO() {}

	public MemberDTO(int no, String name, String id, String pwd, String pno, String gender, String email, String address,
			String phone, String subPhone, int point, Date enrollDate, Date modifiedDate, String blackList,
			String status) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.pno = pno;
		this.gender = gender;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.subPhone = subPhone;
		this.point = point;
		this.enrollDate = enrollDate;
		this.modifiedDate = modifiedDate;
		this.blackList = blackList;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSubPhone() {
		return subPhone;
	}

	public void setSubPhone(String subPhone) {
		this.subPhone = subPhone;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public java.sql.Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(java.sql.Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public String getBlackList() {
		return blackList;
	}

	public void setBlackList(String blackList) {
		this.blackList = blackList;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "MemberDTO [no=" + no + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", pno=" + pno + ", gender="
				+ gender + ", email=" + email + ", address=" + address + ", phone=" + phone + ", subPhone=" + subPhone
				+ ", point=" + point + ", enrollDate=" + enrollDate + ", modifiedDate=" + modifiedDate + ", blackList="
				+ blackList + ", status=" + status + "]";
	}
	
}