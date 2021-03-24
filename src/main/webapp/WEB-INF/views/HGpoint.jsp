<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" type="text/css" href="/resources/css/basic.css">
<title>테스트웹사이트</title>
<style type="text/css">
#bg>a{clear: both; float: left; border: none;}
section{background: none; border: none;}
footer{background: none; border: none;}

table{width: 800px; background-color: #3333;text-align: center; margin:  auto;
height: 400px; border: 20px solid #CCEEFF; border-radius: 15px;
}
td{font-size: 40px; color: white; font-size: 24px; font-weight: 700;}
.btn {
	width: 150px; height: 50px;background-color: #4285F4;color: white;  font-size: 24px;
  font-weight: 700;
}
#bg>a>img{width: 70px; height: 70px; }
</style>
</head>
<script type="text/javascript">
function point_plusgo(f) {
	f.action="point_plus.do";
	f.submit();
}
</script>
<body>
<div id="bg">
<video muted autoplay loop>
<source src="/resources/images/monariza.mp4">
</video>
<div id="wrap">
<header>
<h1><a href="home.do">H&G</a></h1>
<p>HOME&GALLERY</p>
</header>
<nav>
</nav>
<section>
	<article>
		<form method="post">
		<table>
			<tr><td>-MY POINT-</td></tr>
			<tr><td>5815point</td></tr>
			<tr>
			<td colspan="2">
				<input class="btn" type="button"name="point"value="포인트충전"onclick="point_plusgo(this.form)">
			</td>
			</tr>
		</table>
		</form>
	</article>
</section>
<footer></footer>
</div>
</div>
</body>
</html>