package com.jihun.cafe.goods.model.dto;

import java.sql.Date;
import java.util.List;

public class MgGoodsDTO {

	private int no;
	private String name;
	private int price;
	private int typeNo;
	private int writerMemberNo;
	private String status;
	private java.sql.Date createdDate;
	private java.sql.Date modifiedDate;
	private String typeName;
	private String originName;
	private int attachNo;
	private String savedName;
	private String savedPath;
	private String fileType;
	private String thumbPath;

	
	public MgGoodsDTO() {
		
	}

	public MgGoodsDTO(int no, String name, int price, int typeNo, int writerMemberNo, String status, Date createdDate,
			Date modifiedDate, String typeName, int attachNo, String originName, String savedName, String savedPath,
			String fileType, String thumbPath) {
		super();
		this.no = no;
		this.name = name;
		this.price = price;
		this.typeNo = typeNo;
		this.writerMemberNo = writerMemberNo;
		this.status = status;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
		this.typeName = typeName;
		this.attachNo = attachNo;
		this.originName = originName;
		this.savedName = savedName;
		this.savedPath = savedPath;
		this.fileType = fileType;
		this.thumbPath = thumbPath;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public int getWriterMemberNo() {
		return writerMemberNo;
	}

	public void setWriterMemberNo(int writerMemberNo) {
		this.writerMemberNo = writerMemberNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public java.sql.Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(java.sql.Date createdDate) {
		this.createdDate = createdDate;
	}

	public java.sql.Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(java.sql.Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public int getAttachNo() {
		return attachNo;
	}

	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getSavedPath() {
		return savedPath;
	}

	public void setSavedPath(String savedPath) {
		this.savedPath = savedPath;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getThumbPath() {
		return thumbPath;
	}

	public void setThumbPath(String thumbPath) {
		this.thumbPath = thumbPath;
	}

	@Override
	public String toString() {
		return "MgGoodsDTO [no=" + no + ", name=" + name + ", price=" + price + ", typeNo=" + typeNo
				+ ", writerMemberNo=" + writerMemberNo + ", status=" + status + ", createdDate=" + createdDate
				+ ", modifiedDate=" + modifiedDate + ", typeName=" + typeName + ", attachNo=" + attachNo
				+ ", originName=" + originName + ", savedName=" + savedName + ", savedPath=" + savedPath + ", fileType="
				+ fileType + ", thumbPath=" + thumbPath + "]";
	}

}
