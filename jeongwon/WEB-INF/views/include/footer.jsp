<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- footer  --> 
    <section class="footer_bottom">
        <div class="container">
            <div class="row">
            	<br/><br/>
                <div class="col-md-6">
                    <p class="copyright">&copy; Copyright 2017 한국IT교육원 | Powered by  <a href="http://www.github.com/kofelo123/TheArc/"> 허정원</a></p>
                </div>

                <div class="col-md-6">
                    <div class="footer_social">
                        <ul class="footbot_social">
                            <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facbook"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                            <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                            <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- end footer  --> 
<!--댓글테스트용-->    <script type="text/javascript" src="/resources/bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
    <script src="/resources/bootstrap/js/jquery.easing.1.3.js"></script>
    <!-- <script src="/resources/bootstrap/js/retina-1.1.0.min.js"></script> -->
    <script type="text/javascript" src="/resources/bootstrap/js/jquery.cookie.js"></script>  
    <script src="/resources/bootstrap/js/jquery.smartmenus.min.js"></script> 
    <script src="/resources/bootstrap/js/jquery.smartmenus.bootstrap.min.js"></script>
  
    <script type="text/javascript" src="/resources/bootstrap/js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="/resources/bootstrap/js/jflickrfeed.js"></script> 
    <script type="text/javascript" src="/resources/bootstrap/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/resources/bootstrap/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/resources/bootstrap/js/swipe.js"></script>
     <script src="/resources/bootstrap/js/jquery-scrolltofixed-min.js"></script>
   
    <script src="/resources/bootstrap/js/main.js"></script>
    
    <style>
	/*퀵메뉴*/
		#quick_nav {position:absolute; width:50px; height:100%; right:0; top:12%; border-left:1px solid #d7d7d7; margin:100px 0 0 0;overflow:hidden; background:url(../images/common/bg_quick.jpg) no-repeat scroll 100% 0 transparent; background-color:#373737; z-index:1;  }
		#quick_nav ul {height:100%; margin:0; padding:0; position:fixed;}
		#quick_nav ul li {padding:0; text-align:center; line-height:1;}
		#quick_nav ul li a:hover{ opacity:0.7}
		
		@media only screen and (max-width: 767px){
			#quick_nav{ display:none;}
		}
	</style>
	

	<div id="quick_nav">
	    <ul>
	        <li><a href="/sboard/main"><img src="/resources/bootstrap/images/common/btn_quick01.jpg" alt="HOME" /></a></li>
	        <li><a href="/sboard/location"><img src="/resources/bootstrap/images/common/btn_quick02.jpg" alt="찾아오는길" /></a></li>
			<li><a href="/sboard/list/free"><img src="/resources/bootstrap/images/common/btn_quick03.jpg" alt="자유게시판" /></a></li>
	        <li><a href="/sboard/list/thisweek"><img src="/resources/bootstrap/images/common/btn_quick09.jpg" alt="금주의디아크" /></a></li>
	        <li><a href="/sboard/exhibit"><img src="/resources/bootstrap/images/common/btn_quick08.jpg" alt="관람안내" /></a></li>
	        <li><a href="/sboard/list/notice"><img src="/resources/bootstrap/images/common/btn_quick04.jpg" alt="공지사항" /></a></li>
	        <li><a href="/sboard/list/qna"><img src="/resources/bootstrap/images/common/btn_quick05.jpg" alt="묻고 답하기" /></a></li>
	        <li><a href="/sboard/faq"><img src="/resources/bootstrap/images/common/btn_quick06.jpg" alt="자주하는 질문" /></a></li>
	        <li><a class="slidescrolltop" target="logo-bar" style="cursor:pointer;" title="상단으로 이동"><img src="/resources/bootstrap/images/common/btn_quick07.jpg" alt="TOP" /></a></li>
	    </ul>
	</div>
 
</body>
</html>

	<!--  퀵메뉴(우측메뉴) -->
	<script>
	$(function() {
		var qheight = $('.navbar-header').height();
		$('#quick_nav').height(qheight-100);
	});
	$(function(){
		  $("a.slidescrolltop").click(function(){ 
		       var val_id = $(this).attr("target"); 
		        $("html,body").animate({scrollTop:$("#"+val_id).offset().top}, 
		        1000,"easeInOutCirc" 
		    ) 
		        $(this).blur(); 
		        return false; 
		    }); 
		    
		})
		/* 로그인,회원가입 버튼  */
		$('#loginbutton').on("click", function(evt) {

			self.location = "/user/login";

		});
    	$('#joinbutton').on("click", function(evt) {

			self.location = "/user/join";

		});
    	$('#logout').on("click", function(evt){
			self.location = "/user/logout";    		
    	});
    	
</script>