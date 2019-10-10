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
						<li>
							<P>홈</P>
							<a href="//" target="iframe">홈으로</a>
						</li>
						<li>
							<P>요청 매핑</P>
							<a href="info" target="iframe">요청 매핑</a>
						</li>
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