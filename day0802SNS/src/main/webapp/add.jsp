<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기하면 댓글이 저장되는 것(화면출력 x)</title>
</head>
<body>

<% // 글쓴 msg를 application에 저장
	
	String msg = request.getParameter("msg");
	if(msg.equals("")){
%>
<!-- 내가 처음에 표현하려 했던 방법 
<script type="text/javascript">
	alert("메세지에 입력된 값이 없습니다");
	history.go(-1);
</script>		
 -->
<%
	//input text에 속성 required를 걸어서 글쓰지 못하게하는것이 유효성검사!!
	}

	ArrayList<String> msgs = (ArrayList)application.getAttribute("msgs");
	
	if( msgs == null ){ // 글쓴게 없다면?
		msgs = new ArrayList<String>();
		// 컬렉션 생성
		application.setAttribute("msgs", msgs);
		// 세션에 저장			
	}
		msgs.add(msg);
		// 배열에 글쓴것을 저장
	
		response.sendRedirect("main.jsp");
%>

<!--실행 안되는 이유는 response로 이미 이동한 후에 alert이 사용되기 때문이다
	script는 모두 실행된 후에 시작하기때문에 절때 만날수가 없게된다 
<script type="text/javascript">
	alert("<%= msg %>이(가) 등록 완료되었습니다");
</script>
-->

</body>
</html>