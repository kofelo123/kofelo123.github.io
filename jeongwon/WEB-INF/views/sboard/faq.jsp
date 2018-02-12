<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Rainy Responsive Multipurpose Template</title>
	<meta name="description" content="">
	
	CSS FILES
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />

    HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
    WARNING: Respond.js doesn't work if you view the page via file://
    [if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]
</head> -->
<%@include file="/WEB-INF/views/include/header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
	<div id="targetTop"></div><!--  임의로 만들었다. 우측 메뉴때문에. -->
	
 <div class="col-sm-8 col-sm-offset-2" style="margin-bottom:30px;" >
  <section class="subtitle" style="background-image: url('/resources/bootstrap/images/subtitle.png');">
        <div class="container">
            <div class="row">
                <div class="col-sm-9" >
                    <div class="subcontent" style="color:white;margin-top:10px;">
                    <span class="home" ><a href="/sboard/main" style="color:white;">Home </a>  < </span> <span>고객센터 < </span> <strong><a href="/sboard/faq" style="color:white;">자주 하는 질문</a></strong>
                    
                        <h2 style="color:white">자주 하는 질문</h2>
                    </div>
                </div>
              
            </div>
        </div>
   		 </section>

    
   	 </div>
    
	<!--start wrapper-->
	<section class="wrapper">
		<section class="content faq">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div id="accordion" class="panel-group accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseOne" data-parent="#accordion" data-toggle="collapse">
                                        	자전거는 무료로 대여해주나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseOne">
                                    <div class="panel-body">디아크에서 자전거대여는 불가하시며, 디아크 진입로 앞 편의점사랑에서 유료로 대여가 가능하십니다. ^^  </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseTwo" data-parent="#accordion" data-toggle="collapse">
                                          	  체험신청 하고 싶은데 어떻게 하나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseTwo">
                                    <div class="panel-body">체험신청은 매주 화요일 11시 ~ 토요일 18시까지 신청가능합니다. ^^ (지금은 글쓰기 비허용상태입니다.)
금주 일요일인 13일 체험교실신청은 8일 오전 11시 부터~ 12일 18시까지 접수가능하오며,
접수인원 충족시 조기마감 될 수 있습니다~!
유의하셔서 이용하시기 바랍니다~!!</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseThree" data-parent="#accordion" data-toggle="collapse">
                                         		   체험신청했는데  취소하려면 어떻게 해야하나요?


                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseThree">
                                    <div class="panel-body">디아크 체험 취소 연락주시구요
다음주에 다시 신청하셔야 합니다.
오늘도 좋은하루 되세요
</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseFive" data-parent="#accordion" data-toggle="collapse">
                                           
체험신청 모바일로 할수 있나요?


                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseFive">
                                    <div class="panel-body">체험신청은 웹, 모바일에서 모두 신청하실 수 있습니다.
다만 신청마감시에는 두 곳 모두에서 이용하실 수 없습니다. 
최근에는 체험신청이 1분 이내에 마감이 되고 있습니다ㅠ_ㅠ
그만큼 마감이 빨리 진행되오니, 다음 신청시 참고하셔서 신청해주세요!! 
</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseSix" data-parent="#accordion" data-toggle="collapse">
                                          		전시 대관 신청은 어떻게 하나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseSix">
                                    <div class="panel-body">17년도 전시대관일정은 마감되었습니다. ^^

18년도 대관신청은 아직 받고 있지 않으며, 11월 이후에 신청 받을 예정입니다.

11월 이후에 053-585-0916~7번으로 문의주세요~</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseSeven" data-parent="#accordion" data-toggle="collapse">
                                            
								실내체험관에 소방대피로가 안내되어있나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseSeven">
                                    <div class="panel-body">소방대피로를 현황판으로 제작하여, 따로 안내하고 있지는 않습니다만, 내부 천장에 비상구 안내표시가 설치되어있습니다. 평상시 이용하는 엘리베이터와 계단 외에 비상계단이 마련되어있고, 각층 마다 소화전, 소화기, 스프링쿨러가 설치되어있습니다. 저희 디아크 직원들은 관할 소방서에서 정기적인 소방훈련을 받고 있으니, 위급 상황 발생시 직원의 안내에 따라 출입구 또는 옥상으로 대피하시면 되겠습니다.(불의 발화지점에 따라 안내) 관람객 여러분들의 안전을 위해 항상 최선을 다하는 디아크가 되겠습니다. 감사합니다. ^^ </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseEight" data-parent="#accordion" data-toggle="collapse">
                                            물놀이장 수영복 필수인가요? 
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseEight">
                                    <div class="panel-body">안녕하세요~
디아크 문화안내사입니다.
문의주신 내용 업체에 한번 연락해보시면 자세한 사항 말씀해 주실것 같습니다.
감사합니다 ^^
업체전화번호: 010-3567-8656
</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapseNine" data-parent="#accordion" data-toggle="collapse">
                                           		몽키매직쇼는 어떻게 관람하나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseNine">
                                    <div class="panel-body">디아크에서 진행하는 몽키매직쇼는 무료관람이며 15:00(오후3시)에 시작합니다. ^^

명절 잘 보내세요
새해 복 많이 받으시구요 ^^
더 궁금하신 사항은 디아크 053-585-0916~7 로 전화 부탁드립니다. ~~^^</div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <span class="accordian-icon">
                                            <i class="switch fa fa-plus-circle"></i>
                                        </span>
                                        <a href="#collapsetweleve" data-parent="#accordion" data-toggle="collapse">
                                            
체험신청 글쓰기에 등급이 필요 하나요?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapsetweleve">
                                    <div class="panel-body">등업은 필요하지않습니다~!! 오전 11시부터 전회원 신청가능하십니다~!!</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</section>
	

	<!--end wrapper-->
 <%@include file="/WEB-INF/views/include/footer.jsp"%>
 
 
