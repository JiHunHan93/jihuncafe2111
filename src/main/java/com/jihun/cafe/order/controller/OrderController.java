package com.jihun.cafe.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jihun.cafe.order.model.service.OrderService;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	private final OrderService order;
	
	@Autowired
	public OrderController(OrderService order) {
		this.order = order;
	}
	
	@GetMapping(value={"main", "/"})
	public String greenbeansMain() {
		
		return "greenbeans/greenbeansMain";
	}
}
