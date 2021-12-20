package com.jihun.cafe.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jihun.cafe.member.model.service.MemService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private final MemService memSer;
	
	@Autowired
	public MemberController(MemService memSer) {
		this.memSer = memSer;
	}
	
	@GetMapping("login")
	public String loginPage() {
		
		return "member/login";
	}
	
}
