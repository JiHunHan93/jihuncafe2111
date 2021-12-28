package com.jihun.cafe.admin.model.dao;

import java.util.List;

import com.jihun.cafe.admin.model.dto.MemberBlackListDTO;
import com.jihun.cafe.admin.model.dto.MemberDetailDTO;
import com.jihun.cafe.admin.model.dto.MemberManagementPageInfoDTO;
import com.jihun.cafe.admin.model.dto.SearchReadyDTO;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberModifyDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;

public interface AdminMapper {

	int totalMemberList();

	List<MemberDTO> mainMemberList(MemberManagementPageInfoDTO searchPage);

	int viewMgBlackCount(int no);

	int viewMgModifyCount(int no);

	int viewMgPointCount(int no);

	MemberDetailDTO viewMemberDetailInfo(int no);

	List<MemberBlackListDTO> viewMgBlackListlInfo(MemberManagementPageInfoDTO mgBlackCount);

	List<MemberModifyDTO> viewMgModifyListlInfo(MemberManagementPageInfoDTO mgModifyCount);

	List<MemberPointDTO> viewMgPointListlInfo(MemberManagementPageInfoDTO mgPointCount);

	int insertBlackList(MemberBlackListDTO mgBlack);

	String selectMgOriginalInfo(int pageNo);

	int insertMgModify(MemberModifyDTO mgModi);

	int updateMgBlackColumn(MemberModifyDTO modifyInfo);

}
