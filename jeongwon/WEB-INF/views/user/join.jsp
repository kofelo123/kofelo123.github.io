<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/bootstrap/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
     <script src="/resources/bootstrap/js/member.js"></script>
	
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
    <!-- 아래부터 도로명주소   -->
    <link rel="stylesheet" href="/resources/bootstrap/css/addrlinkSample.css">
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/user/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadAddrPart1,addrDetail){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.addrDetail.value = addrDetail;
}

</script>
  </head>
  <body class="login-page">
    <div class="login-box2">
      <div class="login-logo">
        <a href="/user/login"><b>회원가입</b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg"></p>


<!-- <div id='expression' style="padding-bottom:20px">
<b>회원 가입시 입력하신 이메일 주소를 입력하시면,<br></b>
<b>아이디 및 비밀번호 변경 링크를 보내드립니다.<br></b>
</div>
  <div class="form-group has-feedback">
    <input type="text" name="email3" class="form-control" placeholder="이메일을 입력해주세요"/>
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div> -->
    <div class="joinForm" >
  
    <form id="join" action="/user/joinPost" method="post" name="form">

      <fieldset>
        <legend>기본정보</legend><br>
        <label>아이디</label>
        <input type="text"      name="uid"        size="15" style="margin-left:10px"  >
        <input type="hidden"    name="reid">
        <input type="button"    value="중복 체크"   onclick="idcheck()" style="margin-left:100px"><br>
        <label>비밀번호</label> 
        <input type="password"  name="upw" style="margin-left:30px"><br>
        <label>비밀번호 확인</label> 
        <input type="password"  name="upwCheck"><br>
        <label>이름</label>
        <input type="text"      name="uname" style="margin-left:20px"><br>
        <label>이메일</label>
        <input type="text"      name="email" size="12" style="margin-left:7px">&nbsp;@ <input type="text"      name="email2" size="12">
        	<select name="company" onclick="mailcheck()" style="margin-left:10px">
   				<option value="직접입력" selected="selected">직접입력</option>
    			<option value="naver.com">네이버</option>
    			<option value="daum.net" >다음</option>
    			<option value="nate.com" >네이트</option>
    			<option value="hotmail.com" >핫메일</option>
    			<option value="yahoo.com" >야후</option>
   				<option value="empas.com">엠파스</option>
   				<option value="dreamwiz.com">드림위즈</option>
   				<option value="gmail.com">지메일</option>
			</select>
        <br><br><br>
        
      </fieldset>
      <fieldset>
        <legend>추가정보</legend><br>
        <label>주소록</label> 
        <input type="text"       name="zipNum"   size="10" placeholder="-------------->">      
        <input type="button"     value="주소록"  onclick="goPopup();" style="margin-left:10px"><br>
        <div id="callBackDiv">
        <label>주소</label> 
        <input type="text"     id="roadAddrPart1"   name="roadAddrPart1"   size="30" style="margin-left:30px"><br>
        <label>상세주소</label>
        <input type="text"     id="addrDetail"   name="addrDetail"   size="40"  > <br>
        </div>
        <label>휴대전화</label> 
        <select name="phone">
   				<option value="010" selected="selected">010</option>
    			<option value="011">011</option>
    			<option value="016" >016</option>
    			<option value="017" >017</option>
    			<option value="018" >018</option>
    			<option value="019" >019</option>
			</select>
        -&nbsp;<input  type="text"       name="phone2" size="6">&nbsp;-&nbsp;<input  type="text"  name="phone3" size="6"><br><br>
      </fieldset>
      <div class="clear"></div>
    
 

        <input type="button"    value="회원가입"    onclick="go_save()" > 
        <input type="reset"      value="취소" style="margin-left:10px"   >
    
          
        
        
   
   
   
    </form>
   </article>
  </div>
 <!--  <div class="form-group has-feedback">
    <input type="password" name="upw" class="form-control" placeholder=""/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div> -->
  
  

  </div>
  </div>
  
</form>


        
		
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