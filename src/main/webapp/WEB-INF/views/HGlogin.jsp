<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" type="text/css" href="/resources/css/basic.css">
<link rel= "stylesheet" type="text/css" href="/resources/css/loginstyle.css">
<title>테스트웹사이트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#sameChk").click(function() {
		$("#msg").empty();
		$.ajax({
			url:"same_id.do",
			method:"post",
			data:"id="+$("#sameid").val(),
			dataType:"text",
			success:function(data) {
				if (data.trim()=='yes') {
				$("#msg").append("<p style='color: white;'>사용가능한 아이디입니다</p>");
				}else if(data.trim()=='no'){
					$("#msg").append("<p style='color: red;'>중복된 아이디입니다</p>");
				}
			},
			error: function() {
				alert("전송실패");
			}
		});
	});
})
</script>
<style type="text/css">
#bg>a{clear: both; float: left; border: none;}
section{background: none; border: none;}
footer{background: none; border: none;}
#bg>a>img{width: 70px; height: 70px; }
</style>
<script type="text/javascript">
function login_ok(f) {
	
	f.action="login_ok.do";
	f.submit();
}
function insert(f) {
	f.action="signUp.do";
	f.submit();
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
      <h1>Account Login</h1>
    </div>
    <div class="form-content">
      <form method="post">
        <div class="form-group">
          <label for="username">ID</label>
          <input type="text" id="id" name="id" required="required"/>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="pw" name="pw" required="required"/>
        </div>
        <div class="form-group">
          <label class="form-remember">
            <input type="checkbox"/>Remember Me
          </label><a href="search.do" class="form-recovery">Forgot Password?</a>
        </div>
        <div class="form-group">
          <button onclick="login_ok(this.form)">Log In</button>
        </div>
      </form>
    </div>
  </div>
  <div class="form-panel two">
    <div class="form-header">
      <h1>Register Account</h1>
    </div>
    <div class="form-content">
     <form method="post">
    	<div class="form-group">
          <label for="username">ID중복검사<div id="msg"></div></label>
          <input style="width: 300px; height: 45px;" type="text" id="sameid" name="sameid" required />
          <button style="width: 150px; height: 45px; padding: none;" id="sameChk" type="button">중복검사</button>
        </div>
        </form>
      <form method="post">
        <div class="form-group">
          <label for="username">ID</label>
          <input type="text" id="id" name="id" required="required"/>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="pwd" name="pwd" required="required"/>
        </div>
      <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" required="required"/>
        </div>
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" id="email" name="email" required="required"/>
        </div>
        <div class="form-group">
          <button type="button" onclick="insert(this.from)">Register</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
  var panelOne = $('.form-panel.two').height(),
    panelTwo = $('.form-panel.two')[0].scrollHeight;

  $('.form-panel.two').not('.form-panel.two.active').on('click', function(e) {
    e.preventDefault();

    $('.form-toggle').addClass('visible');
    $('.form-panel.one').addClass('hidden');
    $('.form-panel.two').addClass('active');
    $('.form').animate({
      'height': panelTwo
    }, 200);
  });

  $('.form-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).removeClass('visible');
    $('.form-panel.one').removeClass('hidden');
    $('.form-panel.two').removeClass('active');
    $('.form').animate({
      'height': panelOne
    }, 200);
  });
});
</script>
</section>
<footer></footer>
</div>
</div>
</body>
</html>