<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>


    <link href="/resources/bootstrap/css/fracti	onslider.css" rel="stylesheet" type="text/css">
    <link href="/resources/bootstrap/css/style-fraction.css" rel="stylesheet"  type="text/css">

<%@include file="/WEB-INF/views/include/header2.jsp"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
    <!--Start Slider-->
    <section class="slider" >
        <div class="fs_loader"></div>
        
        <div class="slide">
        	<img src="/resources/bootstrap/images/2-3.jpg" style="width:100%;height:100%;">
            <!-- <img src="images/fraction-slider/slider-girl.png" width="340" height="340" data-position="2,1150" data-in="fade" data-out="fade" data-delay="500" style="width:auto; height:auto"> -->
        </div>

		<div class="slide">
        	<img src="/resources/bootstrap/images/2-2.jpg" style="width:100%;height:100%;">
            <!-- <img src="images/fraction-slider/slider-girl.png" width="340" height="340" data-position="2,1150" data-in="fade" data-out="fade" data-delay="500" style="width:auto; height:auto"> -->
        </div>
       
        <div class="slide">
        	<img src="/resources/bootstrap/images/1-1.PNG" style="width:100%;height:100%;">
            <!-- <img src="images/fraction-slider/slider-girl.png" width="340" height="340" data-position="2,1150" data-in="fade" data-out="fade" data-delay="500" style="width:auto; height:auto"> -->
        </div>
      
        </div>
    </section>

    </section> 
    <!--End Slider-->
</div>
<!--End Header-->
<style>
.row h3{
	line-height:0px;
}
.promo_box .container{
width:100%;
}
@font-face {
    font-family: 'Typo_DecoVariety';
    src: url(/resources/bootstrap/fonts/HoonWhitecatR.ttf) format('truetype');
}
 
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--start wrapper-->
<section class="wrapper">
    <section class="promo_box">
    <jsp:useBean id="toDay" class="java.util.Date" />
        <div class="container">
            <div class="row">
				<div class="col-sm-11 col-sm-offset-1 col-xs-12">	
	<h4><fmt:formatDate value="${toDay}" pattern="yy년 MM월 dd일" /> 대구광역시 달성군 다사읍 기준</h4> 
            		</div>
            	<c:forEach items="${weather }" var="weatherObj" varStatus="status" begin="0" end="3">
            		<div class="col-sm-1 col-sm-offset-1 col-xs-6">
            		
            		
                	<c:choose>
                		
      					 <c:when test="${weatherObj.sky == '1'}">
     					    <img src="/resources/bootstrap/images/weather/sun.PNG" />
     					    <h3>맑음</h3>
  					     </c:when>
      					 <c:when test="${weatherObj.sky == '2'}">
     					    <img src="/resources/bootstrap/images/weather/littleCloud.PNG" />
     					    <h3>구름조금</h3>
  					     </c:when>
      					 <c:when test="${weatherObj.sky == '3'}">
     					    <img src="/resources/bootstrap/images/weather/manyCloud.PNG" />
     					    <h3>구름많음</h3>
  					     </c:when>
      					 <c:when test="${weatherObj.sky == '4'}">
     					    <img src="/resources/bootstrap/images/weather/rain.PNG" />
     					    <h3>흐림</h3>
  					     </c:when>
  					     <c:otherwise>
  					     	<img src="/resources/bootstrap/images/weather/noweather.PNG" />
  					     	<h3>10AM이후갱신</h3>
  					     </c:otherwise>
  					 </c:choose>
  					 
  					 
                    <h3>강수확률: ${weatherObj.pop}%</h3>
                    <h3>습도: ${weatherObj.reh}%</h3>
                    <h3>기온: ${weatherObj.t3h}℃</h3>
                    
                    <c:choose>
                    <c:when test="${status.index==0 }">
                    <h2> 오전 9시</h2>
                    </c:when>
                    <c:when test="${status.index==1 }">
                    <h2> 낮 12시</h2>
                    </c:when>
                    <c:when test="${status.index==2 }">
                    <h2> 오후 3시</h2>
                    </c:when>
                    <c:when test="${status.index==3 }">
                    <h2> 오후 6시</h2>
                    </c:when>
                    </c:choose>	
            		</div>
				</c:forEach>
								
                 <div class="col-sm-2">
                 	<div class="time" style="margin-top:10px;">
               		  	<img src="/resources/bootstrap/images/weather/time.PNG"  />
                 	</div>
                 </div>
                </div>
                
            </div>
        </div>
    </section>


    <section class="latest_work">
        <div class="container">
            <div class="row sub_content">
                <div class="carousel-intro">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>포토존</span></h4>
                        </div>
                        
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc">
                    <ul class="jcarousel-list">
                     <c:forEach items="${photo}" var="boardVO" varStatus="status" begin="0" end="5">
                        <!-- Recent Work Item -->
                        <li class="col-sm-12 ">
                            <div class="recent-item">
                                <figure class="touching medium">
                                    <div class="pic">
                                        <a href='/sboard/readPage/${boardVO.category}?bno=${boardVO.bno}&uid=${login.uid}'>
										 <img src="/displayFile?fileName=${thumNail[status.index]}" height="200" width="200" alt="이미지없음">
										 </a>
                                    </div>
                                    <div class="skin-overlay"></div>
                                    
                                    <c:set value="${fn:substring(thumNail[status.index],0,12)}" var="front"/><!-- 썸네일 ->원본이미지 띄우기   -->
                                   <c:set value="${fn:substring(thumNail[status.index],14, fn:length(thumNail[status.index]))}" var="end"/>
									
									
                                   <a href="/displayFile?fileName=${front }${end}" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                    <a href='/sboard/readPage/${boardVO.category}?bno=${boardVO.bno}&uid=${login.uid}' class="hover-link">
                                        <i class="fa fa-link"></i>
                                    </a>
                                    <figcaption class="item-description">
                                        <h5>${boardVO.title}</h5>
                                        <span>${boardVO.writer}</span>
                                    </figcaption>
                                </figure>
                            </div>
                        </li>
						</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 미니게시판  (2중foreach)-->
    <section class="content">
    <div class="container">
         <div class="row responmini">
              <c:forEach items="${minBoard}" var="minList">
        <div class="col-md-6">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">${minList.get(0).category}게시판</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-hover table-striped">
              <tr><th>제목</th><th>작성자</th><th class="responth">작성일</th><th class="responth">조회수</th></tr>
              	<c:forEach items="${minList }" var="boardVO">
                <tr style="font-family:Typo_DecoVariety; font-size:17px;color:#337ab7;">
                  <th><a href='/sboard/readPage/${boardVO.category}?bno=${boardVO.bno}&uid=${login.uid}'>${boardVO.title}</th></a>
                  <th>${boardVO.writer}</th>
                  <th class="responth"><fmt:formatDate pattern="MM-dd"
										value="${boardVO.regdate}" /></th>
                  <th class="responth">${boardVO.viewcnt}</th>
        		</c:forEach>
                </tr>
              
              </table>
            </div>
            <!-- /.box-body -->
           </div>
          <!-- /.box -->
        </div>
                </c:forEach>
      </div>
      <!-- /.row -->
      </div>
      <!-- 컨테이너(80%)  -->
    </section>
     
      
      
    </section>
<!--end wrapper-->
	
    <%@include file="/WEB-INF/views/include/footer.jsp"%><!-- 이자리에 있어야 아래 slider관련 동작한다.-->
    <%@include file="/WEB-INF/views/include/footer2.jsp"%><!-- 이자리에 있어야 아래 slider관련 동작한다.-->
 <script charset="utf-8" type="text/javascript" src="/resources/bootstrap/js/jquery.fractionslider.js"></script>
  <script>
        $(window).load(function(){
            $('.slider').fractionSlider({
                'fullWidth': 			true,
                'controls': 			true,
                'responsive': 			true,
                'dimensions': 			"1920,335",
                'increase': 			true,
                'pauseOnHover': 		false,
                'slideEndAnimation': 	false,
                'autoChange':           true
            });
        });
    
    </script> 
    