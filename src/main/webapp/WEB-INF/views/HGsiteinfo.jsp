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
#content{text-align: center;font-size: 20px; font-weight: bolder; width: 1500px; margin: 0 auto;height: 1200px;}
#bg>a>img{width: 70px; height: 70px; }
#content>article{text-align: center;width: 800px; height:900px; background-color: black;margin: 0 auto; font-size: 30px; color: white;}
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
<h2 id="contentmain">H&G Site Information</h2>
</div>
<article>
	HG(home&gallery)는 코로나로 인하여<br><br>
	 문화인들이 직접 미술관 또는 갤러리를 갈수없어<br><br>
	  집에서도 인터넷을 통해 쉽게 접하여 그림들을 관람할 수 있게 하고자 
	만들게 된 사이트입니다.<br><br>
	미흡한 사이트지만 많은 사랑과 관심 부탁드리며 <br><br>
	유저분들의 원활한 게시물과 그림요청에 따라 <br><br>
	갤러리 내부구조 또는 명화나 사진이 업데이트 될 예정입니다.<br><br>
	유저분들의 의견을 최대한 반영하고 게시물 추천에 의하여 갤러리에 등록될 그림이 결정됩니다.<br><br>
	 많은 참여 부탁드리며 
	꾸준한 업데이트를통해 미흡한 사이트내의 기능들을 보완하겠습니다.<br><br> 감사합니다.<br><br>
	-HG-
</article>

</section>
<footer>FOOTER</footer>
</div>
</div>
</body>
</html>