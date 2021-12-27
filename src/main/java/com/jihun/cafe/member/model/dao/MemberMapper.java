package com.jihun.cafe.member.model.dao;

import java.util.List;

import com.jihun.cafe.member.model.dto.MemberDTO;

public interface MemberMapper {

	MemberDTO loginMem(MemberDTO mem);
	
	MemberDTO loginMember(String username);
	
	MemberDTO viewMemberDetailInfo(String username);
	
	List<String> selectUserAuthone(String username);
	
}
