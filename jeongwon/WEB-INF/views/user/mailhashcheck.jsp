<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/bootstrap/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/resources/bootstrap/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- ///배경관련  -->
		<link rel="stylesheet" href="/resources/bootstrap/css/vegas.min.css">
		<script src="/resources/bootstrap/js/jquery-2.1.3.min.js"></script>
		<script src="/resources/bootstrap/js/vegas.min.js"></script>
    
  </head>
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="/sboard/list"><b>The Arc</b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg"></p>


<form action="/user/modifypw" method="POST" name="formm">
<div id='expression' style="padding-bottom:20px">
<b>${user.uid }님 변경하실 비밀번호를 입력해 주세요.<br></b>
<input type="hidden" name="uid" value="${user.uid }">

</div>
  <div class="form-group has-feedback">
    <input type="password" name="upw" class="form-control" placeholder="비밀번호"/>
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
    <input type="password" name="upwcheck" class="form-control" placeholder="비밀번호 확인"/>
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div>
  
 <!--  <div class="form-group has-feedback">
    <input type="password" name="upw" class="form-control" placeholder=""/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div> -->
  <div class="row" style="padding-bottom:10px">
    
    <center><div class="col-xs-5">
      <input type="button" class="btn btn-primary btn-block btn-flat" onclick="go_save()" value="비밀번호 변경"></button>
      
      
    </div><!-- /.col --></center>
  </div>
</form>
 <!--  <div class="form-group has-feedback">
    <input type="password" name="upw" class="form-control" placeholder=""/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div> -->
  
</form>


        

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
<!-- 
    jQuery 2.1.4
    <script src="/resources/bootstrap/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    Bootstrap 3.3.2 JS
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    iCheck
    <script src="/resources/bootstrap/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script> -->
    <script>
    function go_save() {
 if (document.formm.upw.value == "") {
    alert("비밀번호를 입력해 주세요.");
    document.formm.upw.focus();
  } else if ((document.formm.upw.value != document.formm.upwcheck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.formm.upw.focus();
  } else{
	  document.formm.action = "/user/modifypw";
	  document.formm.submit();
  }
}
    </script>
				
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