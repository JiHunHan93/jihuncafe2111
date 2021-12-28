package com.jihun.cafe.admin.model.dto;

public class MemberManagementPageInfoDTO {
	
	private int pageNo;
	private int totalCount;
	private int limit;
	private int buttonAmount;
	private int maxpage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	private int memberNo;
	
	public MemberManagementPageInfoDTO() {}
	
	public MemberManagementPageInfoDTO(int maxpage, int startPage,
			int endPage, int startRow, int endRow) {
		super();
		this.maxpage = maxpage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startRow = startRow;
		this.endRow = endRow;
	}

	public MemberManagementPageInfoDTO(int pageNo, int totalCount, int limit, int buttonAmount, int maxpage,
			int startPage, int endPage, int startRow, int endRow, int memberNo) {
		super();
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		this.limit = limit;
		this.buttonAmount = buttonAmount;
		this.maxpage = maxpage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startRow = startRow;
		this.endRow = endRow;
		this.memberNo = memberNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getButtonAmount() {
		return buttonAmount;
	}

	public void setButtonAmount(int buttonAmount) {
		this.buttonAmount = buttonAmount;
	}

	public int getMaxpage() {
		return maxpage;
	}

	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "MemberManagementPageInfoDTO [pageNo=" + pageNo + ", totalCount=" + totalCount + ", limit=" + limit
				+ ", buttonAmount=" + buttonAmount + ", maxpage=" + maxpage + ", startPage=" + startPage + ", endPage="
				+ endPage + ", startRow=" + startRow + ", endRow=" + endRow + ", memberNo=" + memberNo + "]";
	}
	
}
