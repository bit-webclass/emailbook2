<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.EmailBookVo" %>
<%@ page import="java.util.List"%>
  
<%
	List<EmailBookVo> list = (List<EmailBookVo>)request.getAttribute("emailList");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트</h1>
	<p>입력한 정보 내역입니다.</p>
	
		<% for(EmailBookVo vo : list) { %>
			<table border="1" width="300">
				<tr>
					<td>Last name:</td>
					<td><%=vo.getLastName() %></td>
				</tr>
				<tr>
					<td>First name:</td>
					<td><%=vo.getFirstName() %></td>
				</tr>
				<tr>
					<td>email</td>
					<td><%=vo.getEmail() %></td>
				</tr>
			</table>
			<br>
		<% } %>
	
	<a href="">추가메일 등록</a>
</body>
</html>