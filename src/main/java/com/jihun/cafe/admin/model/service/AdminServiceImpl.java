package com.jihun.cafe.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.admin.model.dao.AdminMapper;
import com.jihun.cafe.admin.model.dto.MemberBlackListDTO;
import com.jihun.cafe.admin.model.dto.MemberDetailDTO;
import com.jihun.cafe.admin.model.dto.SearchReadyDTO;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberModifyDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;

@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;
	
	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int totalMemberList() {
		
		return mapper.totalMemberList();
	}

	@Override
	public List<MemberDTO> mainMemberList(SearchReadyDTO searchPage) {
		
		return mapper.mainMemberList(searchPage.getPageInfo());
	}

	@Override
	public int viewMgBlackCount(int no) {
		
		return mapper.viewMgBlackCount(no);
	}

	@Override
	public int viewMgModifyCount(int no) {
		
		return mapper.viewMgModifyCount(no);
	}

	@Override
	public int viewMgPointCount(int no) {
		
		return mapper.viewMgPointCount(no);
	}

	@Override
	public MemberDetailDTO viewMemberDetailInfo(int no, SearchReadyDTO mgBlackCount, SearchReadyDTO mgModifyCount,
			SearchReadyDTO mgPointCount) {
		
		MemberDetailDTO memberDetail = null;
		
		memberDetail = mapper.viewMemberDetailInfo(no);
		
		List<MemberBlackListDTO> memberBlack = mapper.viewMgBlackListlInfo(mgBlackCount.getPageInfo());
		
		List<MemberModifyDTO> memberModify = mapper.viewMgModifyListlInfo(mgModifyCount.getPageInfo());
		
		List<MemberPointDTO> memberPoint = mapper.viewMgPointListlInfo(mgPointCount.getPageInfo());
		
		memberDetail.setMgBlack(memberBlack);
		memberDetail.setMgModify(memberModify);
		memberDetail.setMgPoint(memberPoint);
		
		return memberDetail;
	}

	@Override
	public int insertBlackList(MemberBlackListDTO mgBlack) {
		
		return mapper.insertBlackList(mgBlack);
	}

	@Override
	public String selectMgOriginalInfo(int pageNo) {
		
		return mapper.selectMgOriginalInfo(pageNo);
	}

	@Override
	public int insertMgModify(MemberModifyDTO mgModi) {
		
		return mapper.insertMgModify(mgModi);
	}

	@Override
	public int updateMgBlackColumn(MemberModifyDTO modifyInfo) {
		
		return mapper.updateMgBlackColumn(modifyInfo);
	}
	
	
	
}
