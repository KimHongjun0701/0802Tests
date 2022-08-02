<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>

<h1><%=session.getAttribute("uname") %>구매한 상품 목록</h1>
<hr>
<ol> <!-- 차례로 번호가 붙여짐 -->
<%
	ArrayList<String> result = (ArrayList)session.getAttribute("result");

	if(result==null){
		out.println("장바구니가 비어있습니다");
	}
	else{
		for(String product : result){
			out.println("<li>"+product+"</li>");
		}
	}
	
	// 이부분에 장바구니 삭제를 넣으면 새로 장바구니를 생성해서 만들 수 있다
%>
</ol>

</body>
</html>