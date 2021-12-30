package com.jihun.cafe.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jihun.cafe.common.springsecurity.UserDetailsVO;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;
import com.jihun.cafe.order.model.dto.OrderAddressDTO;
import com.jihun.cafe.order.model.dto.OrderDTO;
import com.jihun.cafe.order.model.dto.OrderDeliveryDTO;
import com.jihun.cafe.order.model.dto.OrderGoodsDTO;
import com.jihun.cafe.payment.model.dto.PaymentDTO;
import com.jihun.cafe.payment.model.dto.PaymentDivisionDTO;
import com.jihun.cafe.payment.model.service.PaymentService;

@Controller
@RequestMapping("/payment/*")
public class PaymentController {
	
	private final PaymentService pay;
	
	@Autowired
	public PaymentController(PaymentService pay) {
		this.pay = pay;
	}
	
	@GetMapping("paymentPage")
	public String paymentPage(@RequestParam(required=false) int no, Model model, Authentication authentication) {
		
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println(user.getUsername());
		System.out.println(user.getMembername());
		System.out.println(user.getMemberno());
		
		MemberDTO loginInfo = pay.viewMemberDetailInfo(user.getUsername());
		MgGoodsDTO detailInfo = pay.selectGoods(no);
		
		model.addAttribute("loginInfo", loginInfo);
		model.addAttribute("detailInfo", detailInfo);
		
		System.out.println("로그인한 회원 정보(loginInfo) : " + loginInfo);
		System.out.println("주문할 상품 정보(detailInfo) : " + detailInfo);
		
		return "payment/paymentPage";
	}
	
	@PostMapping(value="paymentPage", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String paymentProcess(@ModelAttribute("") OrderDTO order, @ModelAttribute("") OrderGoodsDTO orderGoods, @ModelAttribute("") OrderDeliveryDTO orderDelivery, @ModelAttribute("") OrderAddressDTO orderAddress, @ModelAttribute("") PaymentDTO payment, @ModelAttribute("") PaymentDivisionDTO paymentDivision, @RequestParam(required=false) String currentDate, Authentication authentication) {
		
		Gson gson = new GsonBuilder().create();
		
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		order.setOrderDate(java.sql.Date.valueOf(currentDate));
		payment.setPaymentDate(java.sql.Date.valueOf(currentDate));
		
		/* 1. 주문 테이블  */
		int result1 = pay.insertOrder(order);
		System.out.println("주문 : " + result1);
		
		/* 2. 주문 상품 테이블 */
		int result2 = pay.insertOrderGoods(orderGoods);
		System.out.println("주문상품 : " + result2);
		
		/* 3. 주문 배송 테이블 */
		int result3 = pay.insertOrderDelivery(orderDelivery);
		System.out.println("주문배송 : " + result3);
		
		/* 4. 배송 주소 구분 테이블 */
		int result4 = pay.insertOrderAddress(orderAddress);
		System.out.println("배송 주소 구분 : " + result4);
		
		/* 5. 결제 테이블 */
		int result5 = pay.insertOrderPayment(payment);
		System.out.println("결제 : " + result5);
		
		/* 6. 결제 구분 테이블 : if문 필요 */
		/* 포인트 전액 : 승인번호 X, 그 외 : 승인번호 O
		 * 포인트 사용(O) : 변경된 포인트 처리
		 * 포인트 사용(X) : 포인트 처리 X */
		if(order.getAmountPrice() == 0) {
			
			System.out.println("포인트 전액 결제");
			
			/* 6. 결제 구분 테이블 */
			/* 카드 결제 후 승인번호가 발생하지 않아 임의로 승인 번호를 지급한다 */
			paymentDivision.setAdmissionPayNo(7942);
			int result6 = pay.insertOrderPaymentDivision(paymentDivision);
			System.out.println("승인번호 포인트 : " + result6);
			
			MemberPointDTO point = new MemberPointDTO("사용", java.sql.Date.valueOf(currentDate), order.getExistingPoint(), order.getExistingPoint() - payment.getUsedPoint(), order.getMemberNo(), "POINT");
			int result7 = pay.insertMemberPointInfo(point);
			System.out.println("최종 결과가 3입니까? : " + result7);
		
		} else if(payment.getUsedPoint() == 0) { /* 포인트 변경 X */
			System.out.println("금액만 발생");
			
			/* 6. 결제 구분 테이블 */
			int result6 = pay.insertOrderPaymentDivision(paymentDivision);
			System.out.println("포인트 변경 필요없이 여기서 끝 : " + result6);
			
			
		} else {
			System.out.println("금액 + 포인트 사용 발생");
			
			/* 6. 결제 구분 테이블 */
			int result6 = pay.insertOrderPaymentDivision(paymentDivision);
			
			System.out.println("사용 포인트 : " + payment.getUsedPoint());
			MemberPointDTO point = new MemberPointDTO("사용", java.sql.Date.valueOf(currentDate), order.getExistingPoint(), order.getExistingPoint() - payment.getUsedPoint(), order.getMemberNo(), "POINT");
			int result7 = pay.insertMemberPointInfo(point);
			System.out.println("최종 결과가 3입니까? : " + result7);
			
		}
		
		
		/* 8. Insert 성공 여부에 따른 출력 message 입력*/
		String message = "";
		if(result5 > 0) {
			message = "결제가 완료되었습니다.";
			System.out.println("최종 결과 확인");
		} else {
			message = "결제 처리 중 내부 오류 발생";
			System.out.println("최종 실패");
		}
		
		return gson.toJson(message);
		
		
	}
	
}
