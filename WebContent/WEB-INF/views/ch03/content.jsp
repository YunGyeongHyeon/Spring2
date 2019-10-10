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
			<a href="join?mid=fall&mname=홍길동&mage=22&mpassword=12345&mbirth=1998-01-31" class="btn btn-primary" >join으로 이동!</a>
			<a href="join2?mid=fall&mname=홍길동&mage=22&mpassword=12345&mbirth=1998-01-31" class="btn btn-primary" >join으로 이동!(객체로 받기)</a>
		</p>
		<p>
			<form id="joinForm" name="joinForm" method="post" action="join2" >
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1">이름</span>
				  </div>
				  <input type="text" class="form-control" id="mname" value="김삿갓" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" name="mname">
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1">나이</span>
				  </div>
				  <input type="number" class="form-control" id="mage"  value="22" placeholder="UserAge" aria-label="Username" aria-describedby="basic-addon1" name="mage">
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1">생년월일</span>
				  </div>
				  <input type="date" class="form-control" id="mbirth" value="1995-04-22" placeholder="UserBirth" aria-label="UserBirth" aria-describedby="basic-addon1" name="mbirth">
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1">아이디</span>
				  </div>
				  <input type="text" class="form-control" id="mid" value="satkat" placeholder="UserID" aria-label="UserID" aria-describedby="basic-addon1" name="mid">
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1">비밀번호</span>
				  </div>
				  <input type="password" class="form-control" id="mpassword" value="sakasaka123" placeholder="UserPassword" aria-label="UserPassword" aria-describedby="basic-addon1" name="mpassword">
				</div>
				<input type="submit" value="회원가입" class="btn btn-info"/>
			</form>
		</p>
		
		<p>
		<script type="text/javascript">
			function join(){
				//HOW1
				/* var mid = $("#mid").val();
				var mname= $("#mname").val();
				var mpassword= $("#mpassword").val();
				var mage= $("#mage").val();
				var mbirth= $("#mbirth").val();
				var params = "";
				params += "mid=" + mid + "&";
				params += "mname=" + mname + "&";
				params += "mpassword=" + mpassword + "&";
				params += "mage=" + mage + "&";
				params += "mbirth=" + mbirth;

				location.href = "join?" + params; */
				
				//HOW2
				/* var joinForm = document.querySelector("#joinForm");
				joinForm.submit();	 */	
				
				//HOW3
				document.joinForm.submit();
				
			}
		</script>
			<button onclick="join()" type="submit" class="btn btn-primary">자바스크립트를 이용해서 데이터 전달</button>
		</p>
		<p>
		<script>
			function joinAjax(){
				$.ajax({
					url: "join3",
					//data: {mid:"killdong",mname:"길동"},
					data: "mid=fall&mname=홍길동",
					method: "post",
					success: function(data){
						var html = "<span>mid: " + data.mid + "</span> <br/>"
						html += "<spam>mname: " + data.mname + "</span>";
						$("#resultDiv").html(html);
					},
					
				});
			}
		</script>
			<button onclick="joinAjax()" type="submit" class="btn btn-warning">AJAX를 통한 데이터 전달</button>
			<div id="resultDiv">
				
			</div>
		</p>
	</body>
</html>