package com.jihun.cafe.goods.model.dto;

public class AttachmentDTO implements java.io.Serializable{

	private int no;
	private int refGoodsNo;
	private String originalName;
	private String savedName;
	private String savePath;
	private String fileType;
	private String thumbnailPath;
	private String attachmentStatus;
	
	public AttachmentDTO() {
		
	}
	
	public AttachmentDTO(int no, int refGoodsNo, String originalName, String savedName, String savePath,
			String fileType, String thumbnailPath, String attachmentStatus) {
		super();
		this.no = no;
		this.refGoodsNo = refGoodsNo;
		this.originalName = originalName;
		this.savedName = savedName;
		this.savePath = savePath;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.attachmentStatus = attachmentStatus;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getRefGoodsNo() {
		return refGoodsNo;
	}

	public void setRefGoodsNo(int refGoodsNo) {
		this.refGoodsNo = refGoodsNo;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getThumbnailPath() {
		return thumbnailPath;
	}

	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}

	public String getAttachmentStatus() {
		return attachmentStatus;
	}

	public void setAttachmentStatus(String attachmentStatus) {
		this.attachmentStatus = attachmentStatus;
	}

	@Override
	public String toString() {
		return "AttachmentDTO [no=" + no + ", refGoodsNo=" + refGoodsNo + ", originalName=" + originalName
				+ ", savedName=" + savedName + ", savePath=" + savePath + ", fileType=" + fileType + ", thumbnailPath="
				+ thumbnailPath + ", attachmentStatus=" + attachmentStatus + ", getNo()=" + getNo()
				+ ", getRefGoodsNo()=" + getRefGoodsNo() + ", getOriginalName()=" + getOriginalName()
				+ ", getSavedName()=" + getSavedName() + ", getSavePath()=" + getSavePath() + ", getFileType()="
				+ getFileType() + ", getThumbnailPath()=" + getThumbnailPath() + ", getAttachmentStatus()="
				+ getAttachmentStatus() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	
	
	
}
