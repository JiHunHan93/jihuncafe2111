<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<!-- 로그인 영역 -->
		<div class="login-area">
		
			<!-- 로그인이 필요한 경우 -->
			<c:if test="${ empty sessionScope.loginMember }">
				<form id="loginForm" action="${ pageContext.servletContext.contextPath }/member/login" method="post">
					<table>
						<tr>
							<td><label class="text">ID : </label></td>
							<td><input type="text" name="memberId"></td>
						</tr>
						<tr>
							<td><label class="text">PWD : </label></td>
							<td><input type="password" name="memberPwd"></td>
						</tr>
					</table>
					<div class="btns" align="right">
						<input type="button" class="btn btn-yg" value="회원가입" id="regist2">
						<input type="submit" class="btn btn-or" value="로그인" id="login2">
					</div>
				</form>
			</c:if>
			
			<!-- 로그인이 되어 있는 경우 -->
			<c:if test="${ !empty sessionScope.loginMember }">
				<h3><c:out value="${ sessionScope.loginMember.name }"/>님의 방문을 환영합니다</h3>
				<div class="btns">
						<input type="button" class="btn btn-yg" value="정보수정" id="update">
						<input type="submit" class="btn btn-or" value="로그아웃" id="logout">
					</div>
			</c:if>
		
		</div>	<!-- 로그인 영역 끝 -->
	</div>
</body>
</html>