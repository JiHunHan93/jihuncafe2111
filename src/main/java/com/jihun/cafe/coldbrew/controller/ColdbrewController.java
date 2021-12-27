package com.jihun.cafe.coldbrew.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jihun.cafe.coldbrew.model.service.ColdbrewService;
import com.jihun.cafe.common.springsecurity.UserDetailsVO;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;

@Controller
@RequestMapping("/coldbrew/*")
public class ColdbrewController {
	
	private final ColdbrewService cold;
	
	@Autowired
	public ColdbrewController(ColdbrewService cold) {
		this.cold = cold;
	}
	
	@GetMapping(value={"main", "/"})
	public String coldbrewMain() {
		
		return "coldbrew/coldbrewMain";
	}
	
	@GetMapping("detail")
	public String coldbrewDetail(@RequestParam(required=false) int no, Model model, Authentication authentication) {
		
		/* 받아온 상품번호로 상세조회 */
		MgGoodsDTO selectGoods = cold.selectGoods(no);
		
		/* 로그인한 유저 번호 */
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		
		model.addAttribute("detailNo", no);
		model.addAttribute("selectGoods", selectGoods);
		
		return "coldbrew/coldbrewDetail";
	}
	
}
