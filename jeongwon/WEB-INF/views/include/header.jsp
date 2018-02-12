<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
	<!DOCTYPE html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <title>The Arc</title>
    <meta name="description" content="">
 
    <!-- CSS FILES -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/bootstrap/css/style.css" media="screen" data-name="skins">
    
 	<meta property="og:title"              content="${boardVO.title }" />
	<%-- <meta property="og:description"        content="${boardVO.content }" />  이부분때문에 summernote 에러난다.--%>
	<meta property="og:image"              content="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnFa8hrulJs73ktd-t_ST_Bgjqq9Hu3LIWUyEx0F2vQGmtX7ou" />
</head>

  
<body class="home">

<!--Start Header-->
<div id="top-fix" class="clearfix">
    <header id="header" class="container">
        <div class="row">
            <!-- Logo / Mobile Menu -->
            <div id="logo-bar">
                <!-- <div id="logo" > -->
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-1 col-sm-6 ">
                	<div class="mainlogo">
                    	<h1><a href="/sboard/main"><img src="/resources/bootstrap/images/mainlogo.png" alt="theark" /></a></h1>
                    </div>
                </div>
                    
                    <c:if test="${empty login }">
                    <div class="col-md-2 col-md-offset-1 col-lg-1 col-lg-offset-0 col-sm-2 col-sm-offset-2" style="/* margin-right:% ;*/margin-top:10px">
                      <button type="button" id="loginbutton" class="btn btn-success btn-block" >로그인</button>
                     </div>
              		<div class="col-md-2 col-lg-1 col-sm-2" style="margin-top:10px">
                      <button type="button" id="joinbutton" class="btn btn-success btn-block">회원가입</button>
                     </div>
                    </c:if>
                    <c:if test="${not empty login }">
                    <div class="col-lg-1 col-lg-offset-0 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-2">
                    	<c:choose>
                    		<c:when test="${login.authority=='user' }">
                    	<img src="/resources/bootstrap/img/user.png" style="width:25px;height:25px;float:left;margin-top:9px;margin-right:5px;"/><h3 style="line-height:0px">&nbsp;&nbsp;${login.uid}</h3><h4>&nbsp;&nbsp;(일반회원)</h4>
                    		</c:when>
                    		<c:when test="${login.authority=='supporter' }">
                    	<img src="/resources/bootstrap/img/supporter.png" style="width:25px;height:25px;float:left;margin-top:9px;margin-right:5px;"/><h3 style="line-height:0px">&nbsp;&nbsp;${login.uid}</h3><h4>&nbsp;&nbsp;(서포터즈)</h4>
                    		</c:when>
                    		<c:when test="${login.authority=='admin' }">
                    	<img src="/resources/bootstrap/img/king.jpg"  style="width:25px;height:25px;float:left;margin-top:9px;margin-right:5px;"/><h3 style="line-height:0px">&nbsp;&nbsp;${login.uid}</h3><h4>&nbsp;&nbsp;(관리자)</h4>
                    		</c:when>
                    	</c:choose>
                    </div>
                    <div class="col-sm-1">
                    	<button type="button" id="message" onClick="window.open('/sboard/mail/listmail?uid=${login.uid }', '', 'width=475, height=490,left=1000, top=100'); return false;" class="btn btn-success btn-blok" style="margin-top:10px;margin-left:-15px;">메세지함</button>
                    </div>
                    <div class="col-sm-1">
                    	<button type="button" id="logout" class="btn btn-success btn-blok" style="margin-top:10px;margin-left:-60%;">로그아웃</button>
                    </div>
                    </c:if>
              
            </div>
        </div>
        <div class="row">
            <!-- Navigation
            ================================================== -->
            <div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navbar-header">
                	<div class="navbar-responsive">
                	<a href="/sboard/main">
                		<img src="/resources/bootstrap/images/thearc.PNG" style="width:100px;height:40px;margin-left:35%;margin-top:10px;" />
                	</a>
                	</div>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="#">디아크소개</a>
                            <ul class="dropdown-menu">
                                <li><a href="/sboard/thearc">디아크란</a></li>
                                <li><a href="/sboard/exhibit">관람안내</a></li>
                               <!--  <li><a href="index_4.html">디아크풍경</a></li> -->
                                <li><a href="/sboard/location">오시는길</a></li>
                            </ul>
                        </li>

                        <li><a href="#">관광코스</a>
                            <ul class="dropdown-menu">
                                <li><a href="/sboard/list/terarium">야자수 테라리움</a></li>
                                <li><a href="/sboard/list/leisure">수상레저체험</a></li>
                                <li><a href="/sboard/list/seastory">바닷속이야기</a></li>
                                <li><a href="/sboard/list/academy">감성아카데미</a></li>
                                <li><a href="/sboard/list/thisweek">금주의 디아크</a></li>
                            </ul>
                        </li>

                        <li><a href="#">이벤트</a>
                            <ul class="dropdown-menu">
                                <li><a href="/sboard/list/race">포토레이싱대회</a></li>
                                <li><a href="/sboard/list/mythearc">내가 담은 디아크</a></li>
                                <li><a href="/sboard/list/musicvideo">뮤직비디오</a></li>
                            </ul>
                        </li>

                        <li><a href="#">커뮤니티</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/sboard/list/free">자유게시판</a>
                                </li>
                                <li><a href="/sboard/list/news">언론보도</a></li>
                                <li><a href="/sboard/list/photo">포토존</a></li>
                                <li><a href="/sboard/list/visit">방문후기</a></li>
                            </ul>
                        </li>

                        <li><a href="#">고객센터</a>
                            <ul class="dropdown-menu">
                                <li><a href="/sboard/list/notice">공지사항</a></li>
                                 <li><a href="/sboard/faq">자주하는질문</a></li>
                                <li><a href="/sboard/list/qna">묻고답하기</a></li>
                                <li><a href="/sboard/list/supporter">서포터즈</a></li>
                            </ul>
                        </li>

                        <li><a href="#">기타</a>
                         <ul class="dropdown-menu">
                                <li><a href="#" onClick="window.open('/music', '', 'width=680, height=420,left=830, top=330'); return false;"><i class="glyphicon glyphicon-music" style="color:#25c1ef"></i> <span>뮤직플레이어</span></a></li>
                                 <li><a href="https://github.com/kofelo123/TheArc" target="_blank"><i class="fa fa-github "></i> <span>깃허브</span></a></li>
                            </ul>
                    	 </li>

                       
                    </ul>
                </div>
            </div>
        </div>
        <!-- Container / End -->
    </header>
    
    <%@ include file="analytics.jsp"%>	