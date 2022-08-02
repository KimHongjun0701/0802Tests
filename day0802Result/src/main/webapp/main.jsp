<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8"); 
String uname = request.getParameter("uname"); // index.jsp에서 가져온uname을 변수에 담았다
session.setAttribute("uname", uname); // 변수에 담은 값을 세션으로 저장

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>

<h1><%= session.getAttribute("uname") %> 님, 반갑습니다! :D</h1>
<form action="add.jsp" method="post">
	<select name="product">
		<option>사과</option>
		<option>바나나</option>
		<option>키위</option>
		<option>포도</option>
		<option>파인애플</option>
	</select>
	<input type="submit" value="장바구니에 추가하기">
</form>
<hr>
<a href="result.jsp">구매하기</a>
<!-- Get 요청을 새로한 것이기 때문에  -->
<!-- 여기서 보내주는 result에서는 uname을 확인할 수 없음 -->
<!-- 브라우저가 종료되기전까지 사용할 수 있도록 session으로 저장하면 사용 가능! -->

</body>
</html>