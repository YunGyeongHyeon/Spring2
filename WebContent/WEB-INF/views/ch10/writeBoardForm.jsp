<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				if($("#btitle").val() == "") {
					$("#btitleError").text("*제목을 입력하세요.");
					result = false;
				}
				if($("#bcontent").val() == "") {
					$("#bcontentError").text("*내용을 입력하세요.");
					result = false;
				}
			
			return result;
		}
	</script>
	</head>
	<body>
		<H5>게시물 입력</H5>
		<form method="post" action="writeBoard" onsubmit="return checkForm()">
		  <div class="form-group">
		    <label for="btitle">Title</label>
		    <input id="btitle" name="btitle" type="text" class="form-control" placeholder="제목을 입력하세요.">
		    <span class="error" id="btitleError" style="color:red;font-size:0.7em "></span>
		  </div>
		  <div class="form-group">
		    <label for="bcontent">Content</label>
		    <textarea class="form-control" id="bcontent" name="bcontent" rows="3" placeholder="내용을 입력하세요."></textarea>
		    <span class="error" id="bcontentError" style="color:red;font-size:0.7em "></span>
		  </div>
		<div class="form-group">
			<input type="submit" class="btn btn-info" value="글쓰기"/>
		</div>
		
		</form>
	</body>
</html>