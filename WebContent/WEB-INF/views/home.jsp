<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript</title>
		
		<style type="">
			a{
				text-decoration:none;
			}
			/* wrapper */
			#wrapper{
				width: 100%;
				height: 100vh;
			}			
			/* header */
			#header{
				border-bottom: 4px solid black;
				margin-bottom: 10px;	
			}
			/* content */
			#content{
				height: 80%;
				display: flex;
				min-height:0;
			}
			#sideBar{
				width: 300px;
				background-color: lightgray;
				padding-right: 10px;
				border-right: 1px solid black;
				overflow-y: scroll;
			}
			#center{
				flex-grow: 1;
				padding: 10px;
			}
			#center iframe{
				margin-top: 0px;
				width: 100%;
				height: 100%; 
			}
			/* footer */
			#footer{
				border-top: 4px solid black;
				margin-top: 10px;
				text-align: center;
				padding-top: 10px;
			}
		</style>
	</head>
	<body style="height:100vh;">
		<div id="wrapper">
			<!-- header -->
			<div id="header">
				<h3>SpringProgramming</h3>
			</div>
			<!-- content -->
			<div id="content">
				<div id="sideBar">
					<ul>
						<li><a href="info" target="iframe">컨트롤러 생성</a></li>
						<li><a href="ch02/content" target="iframe">요청 매핑</a></li>
						<li><a href="ch03/content" target="iframe">요청 파라메터</a></li>
						<li><a href="ch04/content" target="iframe">요청 헤더값과 쿠키값 설정 및 읽기</a></li>
						<li><a href="ch05/content" target="iframe">컨트롤러에서 뷰로 데이터 전달</a></li>
						<li><a href="ch06/content" target="iframe">매개변수와 리턴타입</a></li>
						<li><a href="ch08/content" target="iframe">파일 업로드</a></li>
					</ul>
				</div>
				<div id="center">
					<iframe name="iframe" src="http://tomcat.apache.org" frameborder="0"></iframe>
				</div>
			</div>
			<!-- footer -->
			<div id="footer">A 2019. IoT Y.G.H.</div>	
		</div>
	</body>
</html>