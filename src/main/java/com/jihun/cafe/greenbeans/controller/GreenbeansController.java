package com.jihun.cafe.greenbeans.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jihun.cafe.common.springsecurity.UserDetailsVO;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.greenbeans.model.service.GreenbeansService;

@Controller
@RequestMapping("/greenbeans/*")
public class GreenbeansController {
	
	private final GreenbeansService green;
	
	@Autowired
	public GreenbeansController(GreenbeansService green) {
		this.green = green;
	}
	
	@GetMapping(value={"main", "/"})
	public String greenbeansMain() {
		
		return "greenbeans/greenbeansMain";
	}
	
	@GetMapping("detail")
	public String greenbeansDetail(@RequestParam(required=false) int no, Model model, Authentication authentication) {
		
		/* 받아온 상품번호로 상세조회 */
		MgGoodsDTO selectGoods = green.selectGoods(no);
		
		/* 로그인한 유저 번호 */
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		
		model.addAttribute("detailNo", no);
		model.addAttribute("selectGoods", selectGoods);
		
		return "greenbeans/greenbeansDetail";
	}
}
