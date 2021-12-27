package com.jihun.cafe.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jihun.cafe.admin.model.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private final AdminService admin;
	
	@Autowired
	public AdminController(AdminService admin) {
		this.admin = admin;
	}
	
	@GetMapping(value={"main", "/"})
	public String greenbeansMain() {
		
		return "greenbeans/greenbeansMain";
	}
}
