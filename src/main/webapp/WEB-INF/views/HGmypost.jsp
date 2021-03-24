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
#bg>a>img{width: 70px; height: 70px; }
table,th,td{
	border: 1px solid black;
	background-color: white;
}
table {
	width: 800px;margin: auto; text-align: center;
	border-collapse: collapse;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function checkAll() {
	if( $("#chkAll").is(':checked') ){
        $("input[name=checkRow]").prop("checked", true);
      }else{
        $("input[name=checkRow]").prop("checked", false);
      }
}
</script>
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
<h2 id="contentmain">MY post</h2>
</div>
	<article>
			<form action="" method="post">
			<table>
				<thead>
				<th style="width: 200px">전체선택
				<input type="checkbox" id="chkAll" name="chkAll" onclick="checkAll()">
				</th>
				<th>제목</th><th>내용</th><th>게시일</th><th>조회수</th></thead>
				<tbody>
				<c:choose>
					<c:when test="${empty plist }">
					<tr>
						<td colspan="5">
						게시물없음
						</td>
					</tr>
					</c:when>
					<c:otherwise>
					<tr>
					<td>db가져오기</td>
					<td>db가져오기</td>
					<td>db가져오기</td>
					<td>db가져오기</td>
					</tr>
					</c:otherwise>
				</c:choose>
				</tbody>
				<tfoot>
					<tr align="right">
						<td colspan="5"> <input type="button" value="수정" onclick="">
						<input type="button" value="삭제" onclick="">
						</td>
					</tr>
				</tfoot>
			</table>
			</form>
	</article>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>