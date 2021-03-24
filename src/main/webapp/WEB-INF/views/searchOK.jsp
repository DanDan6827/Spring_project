<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	var k = "<c:out value='${mvo.id}' />";
		alert("회원님의 아이디는"+k+"입니다");
		location.href="login.do";
	</script>
</body>
</html>