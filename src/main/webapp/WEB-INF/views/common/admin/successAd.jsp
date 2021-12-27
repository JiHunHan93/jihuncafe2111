<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function() {
			const successCode = "${ requestScope.successCode }";
			
			let successMessage = "";
			let movePath = "";
			
			switch(successCode) {
			case "loginAdmin" :
				successMessage = "관리자 로그인에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/admin/mainIndex"
				break;
			case "insertMember" :
				successMessage = "회원가입에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }"
				break;
			case "updateMember" :
				successMessage = "정보변경을 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/member/update"
				break;	S
			case "insertNotice" :
				successMessage = "공지사항 등록을 완료했습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/admin/notice"
				break;	
			case "insertAnswer" :
				successMessage = "공지사항 등록을 완료했습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/admin/answer"
				break;	
			}
			
			
			//alert(successMessage);
			location.href = movePath;
			
		})();
	</script>
</body>
</html>