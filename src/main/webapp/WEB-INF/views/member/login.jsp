<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Morning Glory</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="/mg/resources/js/event.js"></script>
<link rel="stylesheet" type="text/css"
	href="/cafe/resources/css/login.css">
<link rel="stylesheet" type="text/css"
	href="/cafe/resources/css/header.css">
<link rel="stylesheet" type="text/css"
	href="/cafe/resources/css/footer.css">
<link rel="stylesheet" type="text/css"
	href="/cafe/resources/css/main-common.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div class="container">
		<br>
		<br>
		<br>
		<!-- 로그인이 필요한경우 -->
		<div id="for">
			<div class="img_area">
				<img src="../resources/image/Logo1.png">
			</div>
			<h1 align="center">
				<strong>모닝글로리 로그인</strong>
			</h1>
		</div>
		<fieldset class="fs">
			<c:if test="${ empty sessionScope.loginMember }">
				<form class="fss"
					action="${ pageContext.servletContext.contextPath }/member/login"
					method="post" id="form">
					<input type="text" name="email" class="id2" placeholder="아이디를 입력해주세요" maxlength=20> <br> 
					<input type="password" name="pwd" class="id2" placeholder="비밀번호를 입력해주세요" maxlength=20> <br> <br>
					<span> <input type="checkbox" name="saveid" id="chksaveId"
						value="on">아이디 저장
					</span> <span style="float: right;"> <input type="checkbox"
						name="security" value="Y" class="security">보안접속
					</span> <br> <br> <br> <input type="submit"
						class="btn btn-or" value="로그인" id="login2"><br><br>
					<!-- <button id="login1" title="로그인">로그인</button><br> -->
					<a href="${ pageContext.servletContext.contextPath }/member/findId" class="find">아이디찾기</a>
					<a href="${ pageContext.servletContext.contextPath }/member/findpwd" class="find">비밀번호찾기</a> 
						<input type="button"
						class="btn btn-yg" value="회원가입" id="regist2">

				<div align="center">
					<img src="../resources/image/Logo1(2).png">
				</div>
				</form>
			</c:if>
			
			<c:if test="${ ! empty sessionScope.loginMember }">
			<!-- 세션에 로그인멤버가 담겨있으면 로그인이 필요하지 않다는 의미  '!'로 부정-->
				<h3><c:out value="${ sessionScope.loginMember.name }"/>님의 방문을 환영합니다.</h3>
				<br><br>
				<div class="btns">
					<input type="button" class="btn btn-or" value="정보수정" id="update">
					<br><br>
					<input type="button" class="btn btn-or" value="로그아웃" id="logout">
				</div>
			</c:if>
			
		</fieldset>

	</div>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>