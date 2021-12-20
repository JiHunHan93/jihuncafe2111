package com.jihun.cafe.common.springsecurity;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

@Service	//로그인 실패 대응 로직
public class UserLoginFailHandler implements AuthenticationFailureHandler {
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		System.out.println("로그인 실패 상황 진입");
		
		if(exception instanceof AuthenticationServiceException) {
			
			request.setAttribute("loginFailMsg", "가입되지 않은 회원입니다.");
			
		} else if(exception instanceof BadCredentialsException) {
			
			request.setAttribute("loginFailMsg", "아이디 또는 비밀번호가 일치하지 않습니다");
			
		} else if(exception instanceof LockedException) {
			
			request.setAttribute("loginFailMsg", "락이 걸린 계정입니다.");
			
		} else if(exception instanceof DisabledException) {
			
			request.setAttribute("loginFailMsg", "만료된 계정입니다.");
			
		} else if(exception instanceof CredentialsExpiredException) {
			
			request.setAttribute("loginFailMsg", "비밀번호가 만료되었습니다.");
			
		}
		
		/* 로그인 페이지로 다시 Forwarding */
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login");
		
		dispatcher.forward(request,  response);
		
	}
	
}
































