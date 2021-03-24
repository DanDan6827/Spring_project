<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" type="text/css" href="/resources/css/basic.css">
<link rel= "stylesheet" type="text/css" href="/resources/css/loginstyle.css">
<title>테스트웹사이트</title>
<style type="text/css">
#bg>a{clear: both; float: left; border: none;}
section{background: none; border: none;}
footer{background: none; border: none;}
#bg>a>img{width: 70px; height: 70px; }
</style>
<script type="text/javascript">
function search_ok(f) {
	if(f.email.value==""||f.name.value==""){
		alert("이메일과 이름을 입력해주세요");
		f.email.value="";
		f.name.value="";
		f.email.focus();
		return;
	}else{
		
	f.action="search_ok.do";
	f.submit();
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
<nav>
</nav>
<section>
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>Search ID</h1>
    </div>
    <div class="form-content">
      <form method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" id="email" name="email" />
        </div>
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" />
        </div>
        <div class="form-group">
          <button onclick="search_ok(this.form)" type="button">Search ID</button>
        </div>
      </form>
    </div>
  </div>
</div>
</section>
<footer></footer>
</div>
</div>
</body>
</html>