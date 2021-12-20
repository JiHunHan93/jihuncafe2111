package com.jihun.cafe.common.springsecurity;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
public class UserLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, 
			Authentication authentication) throws IOException, ServletException {
		
		/* IP, 세션 ID */
		WebAuthenticationDetails web = (WebAuthenticationDetails) authentication.getDetails();
		
		System.out.println("IP : " + web.getRemoteAddress());
		
		System.out.println("Session ID : " + web.getSessionId());
		
		/* 인증 ID */
		System.out.println("name : " + authentication.getName());
		
		/* 권한 리스트 */
		List<GrantedAuthority> authList = (List<GrantedAuthority>) authentication.getAuthorities();
		System.out.println("권한 : ");
		for(int i = 0; i < authList.size(); i++) {
			System.out.println(authList.get(i).getAuthority() + " ");
		}
		System.out.println();
		
		/* Security가 요청을 가로챈 경우 사용자가 원래 요청했던 URI 정보를 저장한 객체 */
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		
		/* 요청한 URI가 있을 경우 정보를 가져와서 사용함 */
		if(savedRequest != null) {
			
			String uri = savedRequest.getRedirectUrl();
			
			/* 세션에 저장된 객체를 다 사용한 뒤에는 지워줘서 메모리 누수 방지 */
			requestCache.removeRequest(request, response);
			
			System.out.println("savedRequest(uri) : " + uri);
			
			/* 여기로 응답 */
			response.sendRedirect(uri);
			
		} else {
			
			/* 전에 URI가 없으면 바로 메인으로 이동 */
			response.sendRedirect("main");
			
		}
		
		Enumeration<String> list = request.getSession().getAttributeNames();
		
		while(list.hasMoreElements()) {
			System.out.println(list.nextElement());
		}
		
		SavedRequest save = (SavedRequest) request.getSession().getAttribute("SPRING_SECURITY_SAVED_REQUEST");
		
		if(save != null) {
			String uri = save.getRedirectUrl();
			System.out.println("save : " + uri);
			response.sendRedirect(uri);
		}
		
	}
	
	/* 로그인 화면 요청 */
	@RequestMapping("/member/login")
	public String loginView(HttpServletRequest request) {
		
		/* 요청 시점의 사용자 URI 정보를 Session의 Attribute에 담아서 전달(잘 지워줘야 함)
		 * 로그인이 틀려서 다시 하면 요청 시점의 URI가 로그인 페이지가 되므로 조건문 설정 */
		
		String uri = request.getHeader("Referer");
		if(!uri.contains("/member/login")) {
			
			request.getSession().setAttribute("prevPage", request.getHeader("Referer"));
			
		}
		
		System.out.println("로그인 화면 요청 메소드 리턴");
		
		return "mainpage/main";
	}
	
}













