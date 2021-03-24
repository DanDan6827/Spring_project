<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel= "stylesheet" type="text/css" href="/resources/css/basic.css">
<meta charset="UTF-8">
<title>HGhome</title>
<style type="text/css">
#bg>a{width: 150px; height: 30px; color: white;
text-shadow:6px 2px 2px gray; 
font-weight: bold; 
border: 1px solid black;
float: right;
background: black;
border-radius: 10px;
text-align: center;
text-decoration: none;
}
#contentmain{font-size: 40px;color: #fff;
text-shadow:0 1px 1px #bbb,
       0 2px 0 #999, 
       0 3px 0 #888, 
       0 4px 0 #777, 
       0 5px 0 #666, 
       0 6px 0 #555, 
       0 7px 0 #444, 
       0 8px 0 #333, 
       0 9px 7px #302314; 
}
fieldset{float: left;}
fieldset>img{width: 250px; height: 300px;}
</style>
<script type="text/javascript">
function gallery_go() {
	location.href="gallery.do";
}
</script>
</head>
<body>
<div id="bg">
<c:choose>
	<c:when test="${login=='ok' }">
	<a href="logout.do">Logout</a>
	</c:when>
	<c:otherwise>
<a href="login.do">Login/SignUP</a>
	</c:otherwise>
</c:choose>
<video autoplay loop muted>
	<source src="/resources/images/monariza.mp4" type="video/mp4">
</video>
<div id="wrap">
<jsp:include page="TOP.jsp"/>
<section id="content">
<div>
<h2 id="contentmain">이번주 선정 그림</h2>
</div>
	<article>
	<fieldset style="width: 300px; background-color: white;">
		<legend style="font-weight: bold; font-size: 40px;">1위</legend>
		<img src="/resources/images/vango2.jpg">
	</fieldset>
	<fieldset style="width: 300px; background-color: white;">
		<legend style="font-weight: bold; font-size: 40px;">2위</legend>
		<img src="/resources/images/monarija2.png">
	</fieldset>
	<fieldset style="width: 300px; background-color: white;">
		<legend style="font-weight: bold; font-size: 40px;">3위</legend>
		<img src="/resources/images/star night2.png">
	</fieldset>
		<button onclick="gallery_go()" style="width: 250px; height: 100px; font-weight: bold; font-size: 25px;">Watching to Gallery</button>
	</article>
</section>
<aside style="text-align: center; background-image: url('resources/images/aside.jpg');">

		   


</aside>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>
