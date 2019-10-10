<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"/>
	<script type="text/javascript" src="<%=application.getContextPath() %>/resources/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
	</head>
	<body>
		<p>
			현재 사용하고 있는 브라우저는 ${browserKind} 입니다.
		</p>
		<p>
			<form method="get" action="setCookie">
				이름 입력 : <input type="text" name="mname" /><br/>
				<button>쿠키 값 설정</button>
			</form>
		</p>
		<p>
			<a href="getCookie">쿠키값 읽기</a>
			
		</p>
	</body>
</html>