package com.jihun.cafe.cannedcoffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jihun.cafe.cannedcoffee.model.service.CannedcoffeeService;
import com.jihun.cafe.common.springsecurity.UserDetailsVO;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;

@Controller
@RequestMapping("/cannedcoffee/*")
public class CannedcoffeeController {
	
	private final CannedcoffeeService canned;
	
	@Autowired
	public CannedcoffeeController(CannedcoffeeService canned) {
		this.canned = canned;
	}
	
	@GetMapping(value={"main", "/"})
	public String cannedcoffeeMain() {
		
		return "cannedcoffee/cannedcoffeeMain";
	}
	
	@GetMapping("detail")
	public String coldbrewDetail(@RequestParam(required=false) int no, Model model, Authentication authentication) {
		
		/* 받아온 상품번호로 상세조회 */
		MgGoodsDTO selectGoods = canned.selectGoods(no);
		
		/* 로그인한 유저 번호 */
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		
		model.addAttribute("detailNo", no);
		model.addAttribute("selectGoods", selectGoods);
		
		return "cannedcoffee/cannedcoffeeDetail";
	}
}
