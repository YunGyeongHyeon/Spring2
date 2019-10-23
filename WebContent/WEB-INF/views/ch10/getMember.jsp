<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<h5>멤버 정보</h5>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">아이디</th>
      <th scope="col">이름</th>
      <th scope="col">패스워드</th>
    </tr>
  </thead>
  <tbody>
	<tr>
	  <td>${member.mid}</td>
	  <td>${member.mname}</td>
	  <td>${member.mpassword}</td>
 	</tr>
  </tbody>
</table>