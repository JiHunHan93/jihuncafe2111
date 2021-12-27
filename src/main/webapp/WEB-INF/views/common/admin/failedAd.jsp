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
			const a = "${ requestScope.message}"
			
			let a = "";
			let movePath = "";
			
			switch(a) {
			case "failedLogin" :
				mevoePath = "${ pageContext.servletContext.contextPath }/admin/errorLogin"
				break;
			case "message" :
				mevoePath = "${ pageContext.servletContext.contextPath }/admin/errorLogin"
				break;
			}
			
			location.href = movePath;
			
		})();
		
	</script>
</body>
</html>