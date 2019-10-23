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
		function btn1Click(){
			$.ajax({
				url:"connTest" ,
				success: function(data){
					if(data.result){
						$("#div1").html("success");
					}else{
						$("#div1").html("fail");
					}
				}
			});
		}
		
		function btn2Click(){
			$.ajax({
				url:"getMember" ,
				data: {mid:"fall"},
				success: function(data){
					$("#div2").html(data);
				}
			});
		}
	</script>
	</head>
	<body>
		Content.jsp
		<hr/>
		<p>
			<button type="button" onclick="btn1Click()" id="btn1" class="btn btn-success">연결 테스트</button>
			<div id="div1"></div>
		</p>
		<p>
			<button type="button" onclick="btn2Click()" id="btn2" class="btn btn-success">연결 테스트2</button>
			<div id="div2"></div>
		</p>
		<p>
			<a href="boardList?pageNo=1" class="btn btn-success">게시판</a>
		</p>
		
		
	</body>
</html>