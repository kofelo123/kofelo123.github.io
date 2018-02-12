<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=UTF-8" />
	<title>TheArc</title>

 <link rel="icon" type="image/png"  href="/resources/bootstrap/image/lodingthearc3.png"/>
<style>
@CHARSET "UTF-8";
html, body { margin: 0;

 }

#visual {
/**/ /*  */  position: relative;
  height:110%; 
/*   position:absolute;
  width:100%;
  height:100%; */
  
  text-align: center;
  overflow: hidden;
}

#video-bg {
    position: absolute;
  top: 50%;
  left: 50%;
  webkit-transform: translateX(-50%) translateY(-50%);
  transform: translateX(-50%) translateY(-50%);
  width: 100%;
  height: 10%;
}

#video-bg {
  height: 100%;
  width:100%;
  background: #000; /* 배경 이미지로 대체 가능 */
  background-size: cover;
  z-index: -100;
}

#video-bg iframe {
  border: none;
  width: 100%;
  height: 100%;
}

#visual-content {
position: absolute;
  top: 60%;
  left: 40%;
  z-index: 100;
}

h1 {
/* position: absolute;
  top: 10%;
  left: 50%; */

  font-size: 42px;
  font-weight: normal;
    color: #fff;
  margin-bottom: 60px;
}

#visual-btn {
  color: #fff;
  font-size: 20px;
  border: 2px solid #fff;
  padding: 12px 24px;
  border-radius: 5px;
  cursor: pointer;
  background-color:rgba(0,0,0,0);
}

</style>
	 
<script>

if ($(window).width()>500) {
	  $('#video-bg iframe').css('display','block');
	  $('#video-bg').css('height', $(window).width()*0.57);
	}
	else $('#video-bg iframe').css('display','none');


</script>
	<!-- 위까지 동영상 배경입히기  -->
	
    <meta name="description" content="Just another WordPress site"/>
	<meta property="og:title" content="11st.com"/>
	<meta property="og:type" content="Maintenance"/>
	<meta property="og:url" content="http://11st.com"/>
	<meta property="og:description" content="Just another WordPress site"/>
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="http://11st.com/xmlrpc.php" />
	<link rel='stylesheet' id='_custom_fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%2C800%2C300italic%2C400italic%2C600italic%2C700italic%2C800italic&#038;subset=devanagari&#038;ver=4.6.1' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='_iconstyle-css'  href='http://11st.com/wp-content/plugins/maintenance/load/images/fonts-icon/icons.style.css?ver=4.6.1' type='text/css' media='all' /> -->
<link href="/resources/bootstrap/css/11st.css" rel="stylesheet" type="text/css" media='all' />
<!-- <link rel='stylesheet' id='_style-css'  href='http://11st.com/wp-content/plugins/maintenance/load/style.css?ver=4.6.1' type='text/css' media='all' /> -->
<link href="/resources/bootstrap/css/11st2.css" rel="stylesheet" type="text/css" media='all' />
<style id='_style-inline-css' type='text/css'>
body {background-color: #111111}.preloader {background-color: #111111}body {font-family: Open Sans; }.site-title, .preloader i, .login-form, .login-form a.lost-pass, .btn-open-login-form, .site-content, .user-content-wrapper, .user-content, footer, .maintenance a {color: #ffffff;} .ie7 .login-form input[type="text"], .ie7 .login-form input[type="password"], .ie7 .login-form input[type="submit"]  {color: #ffffff} a.close-user-content, #mailchimp-box form input[type="submit"], .login-form input#submit.button  {border-color:#ffffff} .ie7 .company-name {color: #ffffff} 
</style>
<script type='text/javascript' src='http://11st.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='http://11st.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
 <script type='text/javascript' src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.placeholder.js?ver=4.6.1'></script>
<script type='text/javascript' src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.backstretch.min.js?ver=4.6.1'></script>
<script type='text/javascript' src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.blur.min.js?ver=4.6.1'></script>
<script type='text/javascript' src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.frontend.min.js?ver=4.6.1'></script>
 		<script type="text/javascript">
jQuery(document).ready(function() { 
if (jQuery(window).height() < 768) {
jQuery("body").backstretch("http://11st.com/wp-content/uploads/2016/06/mt-sample-background.jpg");
}	else {
jQuery(".main-container").backstretch("http://11st.com/wp-content/uploads/2016/06/mt-sample-background.jpg");
}
});</script>			<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', '']);
				_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script');
					ga.type = 'text/javascript';
					ga.async = true;
					ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
					var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
		
   
	 </head>
<body>



 	<div class="main-container">
		<div class="preloader"><i></i></div>		<div id="wrapper">
<div id="visual">
  <div id="video-bg">
    <iframe src="https://www.youtube.com/embed/djH6aLcJDqw?autoplay=1&controls=0&showinfo=0&wmode=opaque&autohide=1&loop=1&start=2">
    <!-- <iframe src="https://www.youtube.com/embed/GZKZKdVThTE?autoplay=1&controls=0&showinfo=0&wmode=opaque&autohide=1&loop=1&start=124"> -->
     </iframe>
  </div>
  
   <div id="visual-content">
    <h1>Sketched by TheArc</h1>
    <form action="sboard/main" method="get" id="nextpage">
    <input type="hidden" name="a" value="a">	
    
   <button id="visual-btn" >입장하기</button>
   </form>

  </div>
</div>

<script>
	$(document).ready(
			function(){
				
				$('#visual-btn').on(
					"click",
					function(event){
						self.location="sboard/main"
					});//지금은 자바스크립트가 안돌고 form action으로 돌고있음
			});

			
			
</script>

</div>
				</div>
<div class="login-form-container">
			<form name="login-form" id="login-form" class="login-form" method="post" action="/admin/admLogPost"><label for="">관리자 로그인</label><span class="licon user-icon"><input type="text" name="uid" id="log" value="" size="20"  class="input username" placeholder="관리자아이디"/></span><span class="picon pass-icon"><input type="password" name="upw" id="login_password" value="" size="20"  class="input password" placeholder="관리자비밀번호" /></span><a class="lost-pass" href="#" >관리자 외 접근금지</a><input type="submit" class="button" name="submit" id="submit" value="로그인" tabindex="4" /><input type="hidden" name="is_custom_login" value="1" /></form>						<div id="btn-open-login-form" class="btn-open-login-form">
				<i class="foundicon-lock"></i>
			</div>
				</div>	

</body>
</html>