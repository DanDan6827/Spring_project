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
#content{text-align: center;font-size: 20px; font-weight: bolder; width: 1500px; margin: 0 auto;height: auto;background-color: rgba(0,0,0,0.5);}
#bg>a>img{width: 70px; height: 70px; }
#content>article{text-align: center;width: 800px; height:auto; background-color: white;margin: 0 auto; font-size: 30px;

}
article>section{ border:none;
margin:auto; padding: 20px; width: 800px; height: auto;font-size: 15px; background-color: rgba(0,0,0,0);}
#bbs table {
	    width:800px;
	    margin:0 auto;
	    margin-top:20px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table th {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	#bbs table td {
	    text-align:left;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	.odd {background:silver}
	/* 댓글 */
	.div1{width:580px;
	margin: auto;
	}
</style>
</head>
<script type="text/javascript">

function list_go(f) {
	f.action="service.do";
	f.submit();
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
<h2 id="contentmain">Service Center Board</h2>
</div>
<article>
	<section>
	<div id="bbs">
	<form method="post" enctype="multipart/form-data">
		<table summary="게시판 글보기">
			<tbody>
				<tr>
					<th>제목:</th>
					<td>${bvo.subject}</td>
				</tr>
				<tr>
					<th>이름:</th>
					<td>${bvo.writer}</td>
				</tr>
				<tr>
					<th>첨부파일:</th>
						<c:choose>
							<c:when test="${empty bvo.file_name}">
								<td><d>첨부파일 없음</d></td>
							</c:when>
							<c:otherwise>
							<td>
								<img alt="" src="resources/upload/${bvo.file_name}" style="width: 100px;"/><br>
								<a href="download.do?file_name=${bvo.file_name}">${bvo.file_name}</a>
							</td>
							</c:otherwise>
						</c:choose>
				</tr>
				<tr>
					<th>내용:</th>
				<td>
						
							<pre>${bvo.content}</pre>
						
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<c:if test="${bvo.m_id==mvo.id }">
						<input type="button" value="수정" onclick="update_go(this.form)"/>
						<input type="button" value="삭제" onclick="delete_go(this.form)"/>
						</c:if>
						<input type="button" value="목록" onclick="list_go(this.form)"/>
						<input type="hidden" value="${cPage }" name="cPage">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
	<%-- 댓글처리 --%>
	<br>
	<hr>
		<%-- 댓글 출력  --%>
	<br>
		<div class="div1">
		<form method="post">
			<div style="margin: 5px;">
			<c:if test="${login== 'ok' }">
						<strong>${mvo.name }(${mvo.id}님)</strong><br>
						</c:if>
			</div>
		<table>
		
				<tbody>
					<tr>
						<td>
						<textarea rows="4" cols="70" name="content"></textarea></td>
						<td><input style="height: 50px;" type="button" value="댓글" onclick="comm_go(this.form)"></td>
						<input type="hidden" name="b_idx" value="${bvo.b_idx}">
						<input type="hidden" value="${cPage}" name="cPage">
						<input type="hidden" value="${mvo.id }" name="writer">
														
						<!-- 실제 로그인 처리 할때는 글쓴이의 아이디도 필요하다
							 글쓴이와 아이디가 같을 때만 수정삭제 가능
						  -->
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<br>
	<div class="div1">
		<c:forEach var="k" items="${c_list}">
			<div>
				<form method="post">
								${k.writer}님:<br>
				<table>
					<tbody>
						<tr>
							<td>
								<textarea rows="4" cols="70" name="content" disabled>${k.content}</textarea><br>
							</td>
							<c:if test="${k.writer==mvo.id }">
							<td>
								<input style="height: 50px;" type="button"value="댓글삭제" onclick="comm_delete(this.form)">
								<input type="hidden" name="c_idx" value="${k.c_idx}">
								<input type="hidden" name="b_idx" value="${k.b_idx}">
							<input type="hidden" value= "${cPage}" name="cPage">
							</td>
							</c:if>
						</tr>
					</tbody>
				</table>
				</form>
			</div>
		</c:forEach>
	</div>
	<%-- 댓글 입력  --%>

	</section>
	</article>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>