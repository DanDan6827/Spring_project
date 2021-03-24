<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/resources/css/basic.css">
<meta charset="UTF-8">
<title>테스트웹사이트</title>
<style type="text/css">
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
#content>section>img{width: 300px; width:200px; float: left;}
#content>section>p{text-align: left;padding:0 85px;}
#content{text-align: center;font-size: 20px; font-weight: bolder; width: 1500px; margin: 0 auto;height: auto;}
#content>section{padding: 35px 100px; height: auto; border: none; background-color: white;}
#bg>a>img{width: 70px; height: 70px; }
</style>
</head>
<body>
<div id="bg">
<video muted autoplay loop>
<source src="/resources/images/monariza.mp4">
</video>
<div id="wrap">
<jsp:include page="TOP.jsp"/>
<section id="content">
<div>
<h2 id="contentmain">Gallery Picture Information</h2>
</div>
<c:choose>
	<c:when test="${empty ilist }">
			<section>
		 게시물없음
	</section>
	
	</c:when>
	<c:otherwise>
<section>
		<p>title</p>
		<img alt="" src="/resources/images/canvas.png" align="left">~~~~~~~ ~~~~~~~~~ ~~~ ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~ ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~
		 ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~ ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~
		  ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~ ~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~
	</section>	
	</c:otherwise>
</c:choose>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>