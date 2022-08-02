<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    				<%-- ArrayList를 쓰기위한 import --%>
    				<%-- *로 import하면 성능저하를 불러옴 --%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 물건을 추가하는 로직(화면출력 x)</title>
</head>
<body>

<%-- 화면출력이 필요없어서 HTML 로직이 필요 없긴함 --%>
	<%-- session.getMaxInactiveInterval() --%>
	<%-- 세션을 기본값으로 설정 (30분) --%>
<%
	String product = request.getParameter("product");	
	ArrayList<String> result = (ArrayList)session.getAttribute("result");
								// 존재하지않는 변수명을 호출하는 행위는
								// 에러가 아닙니다 ★★★
								// 서버 프로그래밍에선 null로 리턴해줌
								// 변수명 통일이 중요한 이유
	
	if( result == null ){ // 장바구니가 만들어진적이 없다면?
		result = new ArrayList<String>();
			
	}
		result.add(product);
		// 장바구니 배열에 선택한 product를 저장
	
		session.setAttribute("result", result);
		// 세션에 저장
	
%>

<script type="text/javascript">
	alert("<%= product %>이(가) 장바구니에 추가되었습니다!");
	history.go(-1);
	// 뒤로가기 메소드
</script>


</body>
</html>