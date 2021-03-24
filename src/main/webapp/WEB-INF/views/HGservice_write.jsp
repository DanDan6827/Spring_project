<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
table{width: 800px; height:600px; border-collapse:collapse; margin:  0 auto; background-color: white;}
table,tr,td{border: 1px solid black; padding: 3px}
</style>
</head>
<script type="text/javascript">
function write_go(f) {
	f.action="";
	f.submit();
}
function send_list(f) {
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
			<form action="" method="post">
			<table>
		<tbody>
				<tr>
					<th>제목:</th>
					<td align="left"><input type="text" name="subject" size="45"/></td>
				</tr>
				<tr>
					<th>작성자:</th>
					<td align="left"><input type="text" name="writer" size="12"/></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td>
					<script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
					<textarea name="text11" cols="50" rows="8"></textarea>
					<script>
                        CKEDITOR.replace( 'text11' );
                </script>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="저장" onclick="sendData(this.form)"/>
						<input type="reset" value="리셋"/>
						<input type="button" value="목록" onclick="send_list(this.form)"/>
					</td>
				</tr>
			</tbody>
			</table>
			</form>
	</article>
</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>