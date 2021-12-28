package com.jihun.cafe.admin.model.dto;

public class Pagenation {

	public static SearchReadyDTO getSearchPage(SearchReadyDTO searchRd) {
		
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		maxPage = (int) Math.ceil((double) searchRd.getPageInfo().getTotalCount() / searchRd.getPageInfo().getLimit());
		
		startPage = (int) (Math.ceil((double) searchRd.getPageInfo().getPageNo() / searchRd.getPageInfo().getButtonAmount()) -1) * searchRd.getPageInfo().getButtonAmount() + 1;
		
		endPage = startPage + searchRd.getPageInfo().getButtonAmount() -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		if(maxPage == 0 && endPage == 0) {
			maxPage = startPage;
			endPage = startPage;
		}
		
		startRow = (searchRd.getPageInfo().getPageNo() - 1) * searchRd.getPageInfo().getLimit() + 1;
		endRow = startRow + searchRd.getPageInfo().getLimit() -1;
		
		searchRd.getPageInfo().setMaxpage(maxPage);
		searchRd.getPageInfo().setStartPage(startPage);
		searchRd.getPageInfo().setEndPage(endPage);
		searchRd.getPageInfo().setStartRow(startRow);
		searchRd.getPageInfo().setEndRow(endRow);
		
		return searchRd;
	}
	
}
