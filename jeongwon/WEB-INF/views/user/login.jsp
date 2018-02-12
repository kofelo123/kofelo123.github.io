<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/bootstrap/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- iCheck -->
<link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<meta name="description" content="Just another WordPress site" />
<meta property="og:title" content="11st.com" />
<meta property="og:type" content="Maintenance" />
<meta property="og:url" content="http://11st.com" />
<meta property="og:description" content="Just another WordPress site" />
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="http://11st.com/xmlrpc.php" />
<link rel='stylesheet' id='_custom_fonts-css'
	href='http://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%2C800%2C300italic%2C400italic%2C600italic%2C700italic%2C800italic&#038;subset=devanagari&#038;ver=4.6.1'
	type='text/css' media='all' />
<!-- <link rel='stylesheet' id='_iconstyle-css'  href='http://11st.com/wp-content/plugins/maintenance/load/images/fonts-icon/icons.style.css?ver=4.6.1' type='text/css' media='all' /> -->
<link href="/resources/bootstrap/css/11st.css" rel="stylesheet"
	type="text/css" media='all' />
<!-- <link rel='stylesheet' id='_style-css'  href='http://11st.com/wp-content/plugins/maintenance/load/style.css?ver=4.6.1' type='text/css' media='all' /> -->
<link href="/resources/bootstrap/css/11st2.css" rel="stylesheet"
	type="text/css" media='all' />
	
	<!-- ///배경관련  -->
<link rel="stylesheet" href="/resources/bootstrap/css/vegas.min.css">
		<script src="/resources/bootstrap/js/jquery-2.1.3.min.js"></script>
		<script src="/resources/bootstrap/js/vegas.min.js"></script>
		
<style id='_style-inline-css' type='text/css'>
body {
	background-color: #111111
}

.preloader {
	background-color: #111111
}

body {
	font-family: Open Sans;
}

.site-title, .preloader i, .login-form, .login-form a.lost-pass,
	.btn-open-login-form, .site-content, .user-content-wrapper,
	.user-content, footer, .maintenance a {
	color: #ffffff;
}

.ie7 .login-form input[type="text"], .ie7 .login-form input[type="password"],
	.ie7 .login-form input[type="submit"] {
	color: #ffffff
}

a.close-user-content, #mailchimp-box form input[type="submit"],
	.login-form input#submit.button {
	border-color: #ffffff
}

.ie7 .company-name {
	color: #ffffff
}


</style>
<script type='text/javascript'
	src='http://11st.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript'
	src='http://11st.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'
	src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.placeholder.js?ver=4.6.1'></script>
<script type='text/javascript'
	src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.backstretch.min.js?ver=4.6.1'></script>
<script type='text/javascript'
	src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.blur.min.js?ver=4.6.1'></script>
<script type='text/javascript'
	src='http://11st.com/wp-content/plugins/maintenance/load/js/jquery.frontend.min.js?ver=4.6.1'></script>
<script type="text/javascript">
	jQuery(document)
			.ready(
					function() {
						if (jQuery(window).height() < 768) {
							jQuery("body")
									.backstretch(
											"http://11st.com/wp-content/uploads/2016/06/mt-sample-background.jpg");
						} else {
							jQuery(".main-container")
									.backstretch(
											"http://11st.com/wp-content/uploads/2016/06/mt-sample-background.jpg");
						}
					});
</script>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', '' ]);
	_gaq.push([ '_trackPageview' ]);
	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>

<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS')
		alert("가입완료 되었습니다.로그인해주세요");
</script>


</head>
<body class="login-page">
	<div class="main-container">
		<div class="preloader">
			<i></i>
		</div>
		<div id="wrapper">

			<div class="login-box">
				<div class="login-logo">
					<a href="/user/login"><b>The Arc</b></a>
				</div>
				<!-- /.login-logo -->
				<div class="login-box-body">
					<p class="login-box-msg"></p>

					<form action="/user/loginPost" method="post">
						<div class="form-group has-feedback">
							<input type="text" name="uid" class="form-control"
								placeholder="아이디입력" /> <span
								class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" name="upw" class="form-control"
								placeholder="패스워드입력" /> <span
								class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<div class="row">
							<div class="col-xs-8">
								<div class="checkbox icheck">
									<label> <input type="checkbox" name="useCookie">
										로그인 상태 유지
									</label>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-xs-4" style="float: right">
								<button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
							</div>
							<!-- /.col -->
						</div>
					</form>


					<a href="/user/idfind">아이디-비밀번호 찾기</a><br> <a
						href="/user/join" class="text-center">회원가입</a>

				</div>
				<!-- /.login-box-body -->
			</div>
			<!-- /.login-box -->


		</div>

	</div>
	<!-- end wrapper -->

	</div>
	<!--  로그인폼  -->
	<div class="login-form-container">
		<form name="login-form" id="login-form" class="login-form"
			method="post" action="/admin/admLogPost">
			<label for="">관리자 로그인</label><span class="licon user-icon"><input
				type="text" name="uid" id="log" value="" size="20"
				class="input username" placeholder="관리자아이디" /></span><span
				class="picon pass-icon"><input type="password" name="upw"
				id="login_password" value="" size="20" class="input password"
				placeholder="관리자비밀번호" /></span><a class="lost-pass" href="#">관리자 외
				접근금지</a><input type="submit" class="button" name="submit" id="submit"
				value="로그인" tabindex="4" /><input type="hidden"
				name="is_custom_login" value="1" />
				
		</form>
		<div id="btn-open-login-form" class="btn-open-login-form">
			<i class="foundicon-lock"></i>
		</div>
	</div>
</body>
</html>

	<script>
			$(function(){
				$('body').vegas({
					slides:[

						{
							video : {
								src: ['/resources/bootstrap/dew.webm'],
								loop:true,
								mute:true
							}
						}
					]
				});
			});
		</script>