<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/resources/css/basic.css?1=0">
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
#bbs table {
	width:800px;
	margin:0 auto;
	margin-top:20px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th, #bbs table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

.no { width: 15% }
.subject { 	width: 30% }
.writer {	width: 20% }
.reg {	width: 20% }
.hit {	width: 15% }
.title {	background: lightsteelblue }
.odd {	background: silver }

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
</head>
<script type="text/javascript">
function write_go() {
	if (${login=='ok'}) {
		location.href="service_write.do";
			
		}else{
			alert("로그인 이 필요합니다.");
			location.href="login.do";
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
<h2 id="contentmain">Service Center Board</h2>
</div>
	<article>
			<div id="bbs" align="center">
		<table>
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="reg">날짜</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${empty slist }">
					<tr><td colspan="5"><h2>게시물 없음.</h2></td></tr>
					</c:when>				
					<c:otherwise>
					<c:forEach items="${slist}" var="k" varStatus="vs">
						<tr>
						
								<td>${vs.count}</td>
								<td>
								<a href="service_onelist.do?b_idx=${k.b_idx}&cPage=${paging.nowPage}">${k.subject }</a>
								</td>
								<td>${k.writer }</td>
								<td>${k.write_date.substring(0,10)}</td>
								<td>${k.hit }</td>
							</tr>
					</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>

			<!-- 페이지기법 -->
			<tfoot>
				<tr>
					<td colspan="4">
						<ol class="paging">
						<!-- 이전 -->
						    <c:choose>
						    	<c:when test="${paging.beginBlock <= paging.pagePerBlock }">
						    	<li class="disable">이전으로</li>
						    	</c:when>
						    	<c:otherwise><li><a href="list.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a></li></c:otherwise>
						    </c:choose>
						    <!-- 블록안에 들어간 페이지번호들 -->
							<c:forEach begin="${paging.beginBlock }" end="${paging.endBlock}" step="1" var="k">
								
								<!-- 현재 페이지와 현재 페이지가 아닌것으로 구분 -->
								<c:choose>
									<c:when test="${k==paging.nowPage }">
										<li class="now">${k}</li>
									</c:when>
									<c:otherwise>
									<li><a href="list.do?cPage=${k}">${k}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 다음 -->
							<c:choose>
						    	<c:when test="${paging.endBlock >= paging.totalPage }">
						    	<li class="disable">다음으로</li>
						    	</c:when>
						    	<c:otherwise>
						    	<li><a href="list.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a></li>
						    	</c:otherwise>
						    </c:choose>
						</ol>
					</td>
					<td>
						<button onclick="write_go()">글쓰기</button>						
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	</article>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>