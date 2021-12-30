package com.jihun.cafe.admin.controller;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jihun.cafe.admin.model.dto.MemberBlackListDTO;
import com.jihun.cafe.admin.model.dto.MemberDetailDTO;
import com.jihun.cafe.admin.model.dto.MemberManagementPageInfoDTO;
import com.jihun.cafe.admin.model.dto.Pagenation;
import com.jihun.cafe.admin.model.dto.SearchReadyDTO;
import com.jihun.cafe.admin.model.service.AdminService;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberModifyDTO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private final AdminService admin;
	
	@Autowired
	public AdminController(AdminService admin) {
		this.admin = admin;
	}
	
	@GetMapping(value={"main", "/"})
	public String adminMain() {
		
		return "admin/main";
	}
	
	@GetMapping("member/manage")
	public String memberManageMain(@RequestParam(required=false) String currentPage, Model model) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		SearchReadyDTO searchMember = new SearchReadyDTO();
		searchMember.setPageInfo(new MemberManagementPageInfoDTO());
		searchMember.getPageInfo().setPageNo(pageNo);
		searchMember.getPageInfo().setTotalCount((admin.totalMemberList()));
		searchMember.getPageInfo().setLimit(10);
		searchMember.getPageInfo().setButtonAmount(5);
		
		List<MemberDTO> mgList = admin.mainMemberList(Pagenation.getSearchPage(searchMember));
		
		
		for(MemberDTO member : mgList) {
			System.out.println("가입한 회원목록" + member);
		}
		
		model.addAttribute("mgList", mgList);
		model.addAttribute("pageInfo", searchMember.getPageInfo());
		
		return "admin/member/management";
	}
	
	@GetMapping("member/manage/detail")
	public String memberDetailManagement(@RequestParam(required=false) int no, @RequestParam(required=false) String currentPage, @RequestParam(required=false) String currentPageMd, @RequestParam(required=false) String currentPageMp, Model model) {
		
		
		int pageNumNo = no;
		int pageNo = 1;
		int pageNoMd = 1;
		int pageNoMp = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		} else if(currentPageMd != null && !"".equals(currentPageMd)) {
			pageNoMd = Integer.parseInt(currentPageMd);
		} else if(currentPageMp != null && !"".contentEquals(currentPageMp)) {
			pageNoMp = Integer.parseInt(currentPageMp);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		} else if(pageNoMd <= 0) {
			pageNoMd = 1;
		} else if(pageNoMp <= 0) {
			pageNoMp = 1;
		}
		
		/* 1-1. 블랙리스트 페이지처리 */
		SearchReadyDTO mgBlackCount = new SearchReadyDTO();
		mgBlackCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgBlackCount.getPageInfo().setPageNo(pageNo);
		mgBlackCount.getPageInfo().setTotalCount((admin.viewMgBlackCount(no)));
		mgBlackCount.getPageInfo().setLimit(5);
		mgBlackCount.getPageInfo().setButtonAmount(5);
		mgBlackCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgBlackCount);
		
		/* 1-2. 정보변경이력 페이지처리 */
		SearchReadyDTO mgModifyCount = new SearchReadyDTO();
		mgModifyCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgModifyCount.getPageInfo().setPageNo(pageNoMd);
		mgModifyCount.getPageInfo().setTotalCount((admin.viewMgModifyCount(no)));
		mgModifyCount.getPageInfo().setLimit(10);
		mgModifyCount.getPageInfo().setButtonAmount(5);
		mgModifyCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgModifyCount);
		
		/* 1-3. 포인트변경이력 페이지처리 */
		SearchReadyDTO mgPointCount = new SearchReadyDTO();
		mgPointCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgPointCount.getPageInfo().setPageNo(pageNoMp);
		mgPointCount.getPageInfo().setTotalCount((admin.viewMgPointCount(no)));
		mgPointCount.getPageInfo().setLimit(5);
		mgPointCount.getPageInfo().setButtonAmount(5);
		mgPointCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgPointCount);
		
		/* 테이블 조회 + 각 테이블 페이징 처리 결과 */
		MemberDetailDTO mgList = admin.viewMemberDetailInfo(no, mgBlackCount, mgModifyCount, mgPointCount);
		
		System.out.println("주서온 글과 이미지 : " + mgList);
		
		model.addAttribute("mgList", mgList);
		model.addAttribute("pageNumNo", pageNumNo);
		model.addAttribute("pageInfo", mgBlackCount.getPageInfo());
		model.addAttribute("pageInfoMd", mgModifyCount.getPageInfo());
		model.addAttribute("pageInfoMp", mgPointCount.getPageInfo());
		
		return "admin/member/detailMemberInfo";
	}
	
	@GetMapping("member/manage/detailAction2")
	public String memberDetailManagementAction2(@RequestParam(required=false) int no, @RequestParam(required=false) String currentPage, @RequestParam(required=false) String currentPageMd, @RequestParam(required=false) String currentPageMp, Model model) {
		
		
		int pageNumNo = no;
		int pageNo = 1;
		int pageNoMd = 1;
		int pageNoMp = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		} else if(currentPageMd != null && !"".equals(currentPageMd)) {
			pageNoMd = Integer.parseInt(currentPageMd);
		} else if(currentPageMp != null && !"".contentEquals(currentPageMp)) {
			pageNoMp = Integer.parseInt(currentPageMp);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		} else if(pageNoMd <= 0) {
			pageNoMd = 1;
		} else if(pageNoMp <= 0) {
			pageNoMp = 1;
		}
		
		/* 1-1. 블랙리스트 페이지처리 */
		SearchReadyDTO mgBlackCount = new SearchReadyDTO();
		mgBlackCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgBlackCount.getPageInfo().setPageNo(pageNo);
		mgBlackCount.getPageInfo().setTotalCount((admin.viewMgBlackCount(no)));
		mgBlackCount.getPageInfo().setLimit(5);
		mgBlackCount.getPageInfo().setButtonAmount(5);
		mgBlackCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgBlackCount);
		
		/* 1-2. 정보변경이력 페이지처리 */
		SearchReadyDTO mgModifyCount = new SearchReadyDTO();
		mgModifyCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgModifyCount.getPageInfo().setPageNo(pageNoMd);
		mgModifyCount.getPageInfo().setTotalCount((admin.viewMgModifyCount(no)));
		mgModifyCount.getPageInfo().setLimit(10);
		mgModifyCount.getPageInfo().setButtonAmount(5);
		mgModifyCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgModifyCount);
		
		/* 1-3. 포인트변경이력 페이지처리 */
		SearchReadyDTO mgPointCount = new SearchReadyDTO();
		mgPointCount.setPageInfo(new MemberManagementPageInfoDTO());
		mgPointCount.getPageInfo().setPageNo(pageNoMp);
		mgPointCount.getPageInfo().setTotalCount((admin.viewMgPointCount(no)));
		mgPointCount.getPageInfo().setLimit(5);
		mgPointCount.getPageInfo().setButtonAmount(5);
		mgPointCount.getPageInfo().setMemberNo(no);
		Pagenation.getSearchPage(mgPointCount);
		
		/* 테이블 조회 + 각 테이블 페이징 처리 결과 */
		MemberDetailDTO mgList = admin.viewMemberDetailInfo(no, mgBlackCount, mgModifyCount, mgPointCount);
		
		System.out.println("주서온 글과 이미지 : " + mgList);
		
		model.addAttribute("mgList", mgList);
		model.addAttribute("pageNumNo", pageNumNo);
		model.addAttribute("pageInfo", mgBlackCount.getPageInfo());
		model.addAttribute("pageInfoMd", mgModifyCount.getPageInfo());
		model.addAttribute("pageInfoMp", mgPointCount.getPageInfo());
		
		return "admin/member/detailMemberInfoAction2";
	}
	
	@PostMapping(value="member/manage/updateBlackList", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String lineCheck(@RequestParam(required=false) String reason, @RequestParam(required=false) String status, @RequestParam(required=false) int pageNo) {
		
		Gson gson = new GsonBuilder().create();
		
		/* 1. 블랙리스트 등록 */
		MemberBlackListDTO mgBlack = new MemberBlackListDTO();
		mgBlack.setMemberNo(pageNo);
		mgBlack.setStatus(status);
		mgBlack.setReasonInfo(reason);
		int result1 = admin.insertBlackList(mgBlack);
		
		String modifyInfo = "";
		if(mgBlack.getStatus().equals("Y")) {
			modifyInfo = "BLCUNS";
		} else {
			modifyInfo = "MEMBER";
		}
		
		/* 2. 정보수정이력 변경 */
		MemberModifyDTO mgModi = new MemberModifyDTO();
		mgModi.setColumn("CHECK_BLACKLIST");
		mgModi.setOriginInfo(admin.selectMgOriginalInfo(pageNo));
		mgModi.setModifyInfo(modifyInfo);
		mgModi.setMemberNo(pageNo);
		System.out.println("가져온값 : " + mgModi);
		int result2 = admin.insertMgModify(mgModi);
		
		/* 3. 회원 정보 변경 */
		int result3 = admin.updateMgBlackColumn(mgModi);
		System.out.println("회원정보 변경 결과 : " + result3);
		
		int result4 = result1 + result2 + result3;
	    System.out.println("최종결과 result4 : " + result4);
		
		return gson.toJson(mgModi);
	}
	
}




























