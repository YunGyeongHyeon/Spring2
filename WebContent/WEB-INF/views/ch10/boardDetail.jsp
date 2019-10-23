<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		
	</script>
	</head>
	<body>
		<H5>게시물 내용</H5>
		<form>
		  <div class="form-group">
		    <label for="bno">No</label>
		    <div id="bno"  class="form-control">
		    	${board.bno}
		    </div>
		  </div>
		
		  <div class="form-group">
		    <label for="btitle">Title</label>
		    <div id="btitle"  class="form-control">
		    	${board.btitle}
		    </div>
		  </div>
		   
		  <%-- <div class="form-group">
		    <label for="bwriter">Writer</label>
		    <input id="bwriter"  type="text" class="form-control" readonly style="background:white" value="${board.bwriter}">
		  </div>
		  
		   <div class="form-group">
		    <label for="bhitcount">HitCount</label>
		    <input id="bhitcount"  type="text" class="form-control" readonly style="background:white" value="${board.bhitcount}">
		  </div> --%>
		  
		   <div class="form-group">
		    <label for="bdate">Date</label>
		    <input id="bdate"  type="text" class="form-control" readonly style="background:white"
		    	value='<fmt:formatDate value="${board.bdate}" pattern="yyyy년 MM월 dd일 hh시 mm분"/>'>
		  </div>
		  
		  <div class="form-group">
		    <label for="bcontent">Content</label>
		    <textarea class="form-control" id="bcontent"  rows="3" >${board.bcontent}</textarea>
		  </div>
		</form>
		<a href="boardList?pageNo=${pageNo}" class="btn btn-info">목록</a>
		<c:if test="${board.bwriter == mid}">
			<a href="updateBoard?bno=${board.bno}" class="btn btn-primary">수정</a>
			<a href="deleteBoard?bno=${board.bno}" class="btn btn-danger">삭제</a>
		</c:if>
	</body>
</html>