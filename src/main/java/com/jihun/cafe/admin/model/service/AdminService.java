package com.jihun.cafe.admin.model.service;

import java.util.List;

import com.jihun.cafe.admin.model.dto.MemberBlackListDTO;
import com.jihun.cafe.admin.model.dto.MemberDetailDTO;
import com.jihun.cafe.admin.model.dto.SearchReadyDTO;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberModifyDTO;

public interface AdminService {

	int totalMemberList();

	List<MemberDTO> mainMemberList(SearchReadyDTO searchPage);

	int viewMgBlackCount(int no);

	int viewMgModifyCount(int no);

	int viewMgPointCount(int no);

	MemberDetailDTO viewMemberDetailInfo(int no, SearchReadyDTO mgBlackCount, SearchReadyDTO mgModifyCount,
			SearchReadyDTO mgPointCount);

	int insertBlackList(MemberBlackListDTO mgBlack);

	String selectMgOriginalInfo(int pageNo);

	int insertMgModify(MemberModifyDTO mgModi);

	int updateMgBlackColumn(MemberModifyDTO modifyInfo);

}
