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
		<script type="text/javascript">
			function btnLogin(){
				if($("#mid").val() == "")return false;
				if($("#mpassword").val() == "")return false;
				return true;
			}
			
			function btnLogout(){
				location.href="logout";
			}
			
			function jsonDownload1(){
				$.ajax({
					url: "jsonDownload1",
					success: function(data){
						var html = "";
						html += "<tr>";
						html += "	<td>"+ data.bno +"</td>";
						html += "	<td>"+ data.btitle +"</td>";
						html += "	<td>"+ data.writer +"</td>";
						html += "	<td>"+ data.date +"</td>";
						html += "	<td>"+ data.hitcount +"</td>";
						html += "</tr>";
						$("tbody").append(html);
					}
				});
			}
			
			function jsonDownload2(){
				$.ajax({
					url: "jsonDownload2",
					success: function(data){
						var html = "";
						html += "<tr>";
						html += "	<td>"+ data.bno +"</td>";
						html += "	<td>"+ data.btitle +"</td>";
						html += "	<td>"+ data.writer +"</td>";
						html += "	<td>"+ data.date +"</td>";
						html += "	<td>"+ data.hitcount +"</td>";
						html += "</tr>";
						$("tbody").append(html);
					}
				});
			}
		</script>
	</head>
	<body>
	<h1>[HttpSession을 이용해서 로그인 구현]</h1>
		<div>
			<c:if test="${loginResult != 'success'}">
				<form id="loginForm" method="post" action="login">
				  <div class="form-group">
				    <label for="exampleInputEmail1">아이디</label>
				    <input type="text" class="form-control" id="mid" name="mid" placeholder="ID">
				    <c:if test="${loginResult=='worngMid'}">
				    	<span style="font:2em; color:red">로그인 아이디가 없습니다.</span>
				    </c:if>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">패스워드</label>
				    <input type="password" class="form-control" id="mpassword" name="mpassword"placeholder="Password">
					<c:if test="${loginResult=='wrongMpassword'}">
				    	<span style="font:2em; color:red">비밀번호가 틀렸습니다.</span>
				    </c:if>				   

				  </div>
				  <input onclick="btnLogin()" type="submit" class="btn btn-primary" value="로그인">
				</form>
			</c:if>
			<c:if test="${loginResult == 'success'}">
				<div id="logoutDiv">
					<button onclick="btnLogout()" class="btn btn-danger">로그아웃</button>
				</div>
			</c:if>
		</div>
		
		<h1>[OutputStream을 이용해서 파일 다운로드 구현]</h1>
		
		
		<div>
			<a href="fileDownload?fname=Penguins.jpg">파일 다운로드</a>
		</div>
		
		<br/>
		
		<h1>[Writer를 이용해서 JSON데이터 다운로드]</h1>
		<a href="javascript:jsonDownload1()">JSP에서 생성</a><br/>
		<a href="javascript:jsonDownload2()">Controller에서 생성</a><br/>
		<div id="jsonDownload">
		<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th scope="col">번호</th>
		      <th scope="col">제목</th>
		      <th scope="col">글쓴이</th>
		      <th scope="col">날짜</th>
		      <th scope="col">조회수</th>
		    </tr>
		  </thead>
		  <tbody>
		    
		  </tbody>
		</table>
		</div>
		

		
		
	</body>
</html>