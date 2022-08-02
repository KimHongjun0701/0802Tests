<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style type="text/css">
	.user{
		width:150px;
	}
	.user:after{
		content : " : ";
	}
</style>
</head>
<body>

<% 

	String id = request.getParameter("id");

	if(request.getParameter("id") != null){ // 계속해서 김홍준의 이름을 쓰기위해서
	session.setAttribute("id", id);
}

%>



<form action="add.jsp" method="post">
<%= session.getAttribute("id")%>님 :
<input type="text" name="msg">
<input type="submit" value="글쓰기">
</form> 
<hr>
<table>
	<tr>
		<td colspan="2">채팅방</td>
	</tr>
	<tr>
		<td class="user">야스오</td>
		<td>티모 뭔데~</td>
	</tr>
	<tr>
		<td class="user">야스오</td>
		<td>티모 좀 잘하는데?</td>
	</tr>
	<% 
	ArrayList<String> msgs = (ArrayList)application.getAttribute("msgs");
	for(String msg : msgs){ 
	%>
		<tr>
			<td><%= application.getAttribute("id") %></td>
			<td><%= msg %></td>
		</tr>
	<%} %>
</table>


</body>
</html>