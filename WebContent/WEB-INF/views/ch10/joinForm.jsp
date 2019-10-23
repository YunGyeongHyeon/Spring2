<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"/>
	<script type="text/javascript" src="<%=application.getContextPath() %>/resources/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
	<script>
		function checkForm(){
			var result = true;
			//모든 에러내용 지우기
			$(".error").text("");
			//입력값 검사
				if($("#mid").val() == "") {
					$("#midError").text("*아이디을 입력하세요.");
					$("#midError").css("color","red");
					result = false;
				}
				if($("#mpassword").val() == "") {
					$("#mpasswordError").text("*비밀번호를 입력하세요.");
					result = false;
				}
				if($("#mname").val() == "") {
					$("#mnameError").text("*이름을 입력하세요.");
					result = false;
				}
			return result;
		}
		function checkMid(){
			$.ajax({
				url:"checkMid",
				data: {mid:$("#mid").val()},
				success: function(data){
					if(data.result){
						$("#midError").text("*사용할 수 있는 아이디 입니다.");
						$("#midError").css("color","green");
					}else{
						$("#midError").text("*사용할 수 없는 아이디 입니다.");
						$("#midError").css("color","red");
					}
				}
			})
		}
	</script>
	</head>
	<body>
		<H5>회원가입</H5>
		<form method="post" action="join" onsubmit="return checkForm()">
		  
		  <div class="form-group">
			   <label for="mname">NAME</label>
			   <input id="mname" name="mname" type="text" class="form-control" placeholder="이름을 입력하세요.">
		   	<span class="error" id="mnameError" style="color:red;font-size:0.7em "></span>
		  </div>
			<div class="form-group">
				<label for="mname">ID</label>			
				<div class="input-group mb-3">
				  <input type="text" class="form-control" id="mid" name="mid"placeholder="아이디를 입력하세요.">
				  <div class="input-group-append">
				    <input type="button" onclick="checkMid()" class="btn btn-outline-secondary" value="중복체크"/>
				  </div>
				</div>
				    <span class="error" id="midError" style="color:red;font-size:0.7em;display:block "></span>
			</div>
		 
		  <div class="form-group">
		    <label for="mpassword">PASSWORD</label>
		    <input id="mpassword" name="mpassword" type="password" class="form-control" placeholder="비밀번호를 입력하세요.">
		    <span class="error" id="mpasswordError" style="color:red;font-size:0.7em"></span>
		  </div>
		
		<div class="form-group">
			<input type="submit" class="btn btn-info" value="회원가입"/>
		
		</div>
		</form>
	</body>
</html>