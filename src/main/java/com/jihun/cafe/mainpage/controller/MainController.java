package com.jihun.cafe.mainpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping(value= {"/", "main"})
	public String mainPage() {
		
		System.out.println("=======================");
		System.out.println("===== 스프링 적용 전  ======");
		System.out.println("===== 메인 페이지로 이동  ===");
		System.out.println("=======================");
		
		return "mainpage/main";
	}
	
}
