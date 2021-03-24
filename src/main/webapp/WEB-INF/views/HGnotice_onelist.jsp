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
#content>article>section>div{
float:left;
border: 1px solid black; background-color: white; width: 600px;}
article>section{ border:none;
margin:auto; padding: 20px; width: 800px; height: 1000px;font-size: 15px; background-color: rgba(0,0,0,0);}
input{text-align: center; font-weight: bold;}
.chat{width:580px;
	margin: auto;
	}
	table{margin: auto;}
</style>
</head>
<script type="text/javascript">
function notice_write(f) {
	f.action="HGnotice_write.jsp";
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
<h2 id="contentmain">Picture Request</h2>
</div>
<article>
	<section>
	<p style="font-size: 25px;">title</p>
	<p><img alt="" src="/resources/images/canvas.png"></p>
	<p>
	------ ---------- --- ------------<br>
	------ ---------- --- ------------<br>
	------ ------------ ----------------------<br>
	------ ---------- --- ------ ------------------------<br>
	------ ------- ------------ ------- ---------- --- ------------<br>
	------ ---------- --- ------------<br>
	------ ---------- --- ----- ------------------<br>
	------ ------------------ --------- ------- --- ------------<br>
	------ ---------- --- ------------<br>
	------ ---------- --- ------------<br>
	------ ---------- --- ------------<br>
	------ ---------- --- ---------- - - -------------<br>
	------ ------ -------- ------- ----- ----- ----- --- ------------<br>
	------------- --------- --- ---------- --- ------------<br>
	------ ---------- --- ------------<br>
	<p>
	<p style="text-align: center;">작성자:Unknow</p><p style="text-align: center;">조회수:0</p>
	</section>	
	<form action="">
	<input type="button" value="추천" onclick=""> &nbsp; &nbsp; &nbsp;
	<input type="button" value="목록" onclick="location.href='notice.do';">
	</form>
		
</article>
<div class="chat">
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
	<br>
<div class="chat">
		<form method="post">
			<div style="margin: 5px;">
			<c:if test="${login== 'ok' }">
						<strong style="color: white;">${mvo.name }(${mvo.id}님)</strong><br>
						</c:if>
			</div>
		<table>
		
				<tbody>
					<tr>
						<td>
						<textarea rows="4" cols="70" name="content"></textarea></td>
						<td><input style="height: 50px;" type="button" value="댓글" name="comment"></td>
						<!-- 댓글 입력버튼누를시에 로그인정보확인후 돼있으면 인서트 안돼있으면 로그인페이지 이동 -->
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
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>