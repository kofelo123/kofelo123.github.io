<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<meta content="charset=utf-8">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Demo CSS -->
	<link rel="stylesheet" href="/resources/bootstrap/css/mu/demo.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="/resources/bootstrap/css/mu/flexslider.css" type="text/css" media="screen" />

	<!-- Modernizr -->
  <script src="/resources/bootstrap/js/mu/modernizr.js"></script>

</head>
<body class="loading" style="background-color:#b7a767">
<h1 style="color:white;text-align:center;font-size:30px;margin-bottom:-30px;margin-top:10px;font-weight:bold;">Music Player</h1>

  <div id="container" class="cf">
    

	<div id="main" role="main">
      <section class="slider">
        <div class="flexslider">
          <ul class="slides">
          <li>
  	    	    <img src="/resources/bootstrap/images/cafe2.png" />
  	    		</li>
          	<li>
  	    	    <img src="/resources/bootstrap/images/cafe1.jpg" />
  	    		</li>
  	    		
  	    		<li>
  	    	    <img src="/resources/bootstrap/images/cafe3.jpg" />
  	    		</li>
            <li>
  	    	    <img src="/resources/bootstrap/images/cafe4.jpg" />
  	    		</li>
  	    	
          </ul>
        </div>
      </section>
  
    </div>

  </div>

  <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>

  <!-- FlexSlider -->
  <script defer src="/resources/bootstrap/js/mu/jquery.flexslider.js"></script>

  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>


  <!-- Syntax Highlighter -->
  <script type="text/javascript" src="/resources/bootstrap/js/mu/shCore.js"></script>
  <script type="text/javascript" src="/resources/bootstrap/js/mu/shBrushXml.js"></script>
  <script type="text/javascript" src="/resources/bootstrap/js/mu/shBrushJScript.js"></script>

  <!-- Optional FlexSlider Additions -->
  <script src="/resources/bootstrap/js/mu/jquery.easing.js"></script>
  <script src="/resources/bootstrap/js/mu/jquery.mousewheel.js"></script>
  <script defer src="/resources/bootstrap/js/mu/demo.js"></script><!-- 중복가능성  -->


<!-- SCM Music Player http://scmplayer.net -->
<script type="text/javascript" src="http://scmplayer.net/script.js" 
data-config="{'skin':'http://static.tumblr.com/nd9hip4/HaJmqlv6r/askin.css','volume':50,'autoplay':true,'shuffle':false,'repeat':1,'placement':'bottom','showplaylist':false,'playlist':[{'title': '좋니- 윤종신','url':'https://youtu.be/b1kQvZhQ6_M'},{'title': '밤편지 - 아이유','url':'https://youtu.be/M9CS63PDyJ0'} ,{'title': '가시나 - 선미','url':'https://youtu.be/zzZ4YoMZW3E'},{'title': '비도 오고 그래서- 헤이즈','url':'https://youtu.be/sXrR00uFZzc'},{'title': '가을아침 - 아이유','url':'https://youtu.be/CxsffBwhnSw'} ,{'title': '널 너무 모르고 - 헤이즈','url':'https://youtu.be/wtcQAxIaUQs'} ,{'title': '내 옆에 그대인 걸- 다비치','url':'https://youtu.be/7TBIPd0zt1I'} ,{'title':'TT - %uD2B8%uC640%uC774%uC2A4','url':'https://youtu.be/ePpPVE-GGJw'},{'title':'%uB0A8%uC544%uC788%uC5B4 - %uB85C%uAF2C','url':'https://youtu.be/YolFoPo55Ac'},{'title':'11 : 11 - %uD0DC%uC5F0','url':'https://youtu.be/ulr0muQKjk0'},{'title':'IOI - %uB108%uBB34%uB108%uBB34%uB108%uBB34','url':'https://youtu.be/l1hxg1rY17I'},{'title':'%uC6B0%uC8FC%uB97C %uC904%uAC8C  - %uBCFC%uBE68%uAC04%uC0AC%uCD98%uAE30','url':'https://youtu.be/9U8uA702xrE'},{'title': '불장난 - BLACKPINK','url':'https://youtu.be/M-1vTs_uFRI'},{'title': '숨 - 박효신','url':'https://youtu.be/oBKpJiVEcnU'} ,{'title': '이 소설의 끝을 다시 써보려 해 - 한동근','url':'https://youtu.be/-XzHgS77QOI'} ,{'title': '이별을 배웠어  - 슬옹&조이','url':'https://youtu.be/ITZeTl5SjBo'} ,{'title': '어떻게 지내  - 크러쉬','url':'https://youtu.be/Jpb6m8jqa1o'} , {'title': '그대라는 사치 - 한동근','url':'https://youtu.be/07OEr-ptzdA'} ,{'title': '나만 안되는 연애 - 볼빨간사춘기','url':'https://youtu.be/airQW5Rp7Gc'},{'title': '좋니- 그렉','url':'https://youtu.be/sUjiC_1Tkb8'}]}" ></script>


</body>
</html>
 