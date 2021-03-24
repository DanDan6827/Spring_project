<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
#content{text-align: center;font-size: 20px; font-weight: bolder; width: 1500px; margin: 0 auto;height: auto;}

#content>article{text-align: center;width: 800px; height:auto; background-color: rgba(0,0,0,0.5);margin: 0 auto; font-size: 30px;

}
article>section>div{border: 1px solid black; background-color: white;}
article>section{ border:none;
margin: 0 auto; padding: 20px; float: left; width: 150px; height: 300px;font-size: 15px; background-color: rgba(0,0,0,0);}
article>section>div>p>img{margin:0 auto; width: 100px; height: 100px; padding: 25px;}
a{text-decoration: none;}
</style>
</head>
<script type="text/javascript">
function notice_write(f) {
	if (${login=='ok'}) {
	f.action="notice_write.do";
	f.submit();
	}else{
		alert("로그인이 필요한 페이지입니다.");
		f.action="login.do";
		f.submit();
	}
}
</script>
<body>
<div id="bg">
<video muted autoplay loop>
<source src="/resources/images/monariza.mp4">
</video>
<div id="wrap">
<jsp:include page="TOP.jsp"/>
<section id="content">
<div>
<h2 id="contentmain">Picture Request</h2>
</div>
<article>
	<c:choose>
		<c:when test="${empty plist }">
	<div>
	<p>게시물없음</p>
	</div>
		</c:when>
		<c:otherwise>
	<section>
	<div>
	<p><a href="notice_onelist.do">title</a></p>
	<p><img alt="" src="/resources/images/canvas.png" align="left"></p>
	<br>
	<p style="text-align: center;">작성자:Unknow</p><p style="text-align: center;">조회수:0</p><p style="text-align: center;">추천수:0</p>
	</div>
	</section>
		</c:otherwise>
	</c:choose>
</article>
<form action="" style="width: 900px; margin: 0 auto;">
<input type="button" value="게시물작성" style="font-weight: bold; float: right; height: 30px;"onclick="notice_write(this.form)">
</form>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>