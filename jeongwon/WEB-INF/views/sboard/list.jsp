<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<%@include file="../include/header2.jsp"%>
<%@include file="../include/header.jsp"%>

<!-- 썸네일게시판용 -->
<script type="text/javascript" src="/resources/bootstrap/js/upload.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<style>
@font-face {
    font-family: 'Typo_DecoVariety';
    src: url(/resources/bootstrap/fonts/HoonWhitecatR.ttf) format('truetype');
}
.content{
	
	 background-image: url(/resources/bootstrap/images/bg2.jpg);
}
@media only screen and (max-width: 768px){
	.content .row{
		margin-left:0% !important;	
	}
	
	 .box-body #keywordInput{
		width:130px;
	} 

}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Main content -->
<section class="content">
	<div class="row" style="margin-left:17%">
		<!-- left column -->

		<div class="col-sm-10 col-md-10 col-lg-10">
			<!-- general form elements -->
			<div class='box'>
				<div class="box-header with-border">
					<h3 class="box-title" >게시글 검색</h3>
				</div>


				<div class='box-body'>

					<select name="searchType"  style="background-color:#e8faf1">
							
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							제목</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							내용</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							작성자</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							제목+내용</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							내용+작성자</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							제목+내용+작성자</option> 
					</select> <input type="text" name='keyword' id="keywordInput"  style="background-color:#e8faf1;"
						value='${cri.keyword }'>
					<button id='searchBtn'  style="background-color:#e8faf1">검색</button>
					

				</div>
			</div>
			

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">
				${category }
					게시판</h3>
				</div>
				<!--  게시판 리스트 본문 -->
				<!--  썸네일게시판 -->
				<c:choose>   
				
					<c:when test="${category eq 'thisweek' || category eq 'terarium'|| category eq 'leisure'|| category eq 'seastory'|| category eq 'academy'}"> 
						<div class="row">
					<div class="col-xs-12  col-sm-12 col-md-12 col-lg-12">
					<tr>
						<c:forEach items="${list}" var="boardVO" varStatus="status" begin="0" end="9">
						<div class="blog_medium">
							<article class="post">
								<div class="post_date">
									<span class="day"><fmt:formatDate pattern="dd" value="${boardVO.regdate}" /></span>
									<span class="month"><fmt:formatDate pattern="M" value="${boardVO.regdate}" />월</span>
								</div>
								<figure class="post_img">
									<div class="image">
										 <a href='/sboard/readPage/${category}${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&uid=${login.uid}'>
										 <img src="/displayFile?fileName=${thumNail[status.index]}" height="700"  alt="이미지없음">
									</a>
									</div>
								</figure>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href='/sboard/readPage/${category}${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&uid=${login.uid}'>
											${boardVO.title}</a>
										</h2>
										<div class="metaInfo">
											<span><i class="fa fa-user"></i> By <a href="#">${boardVO.writer}</a> </span>
											<span><i class="fa fa-comments"></i> <a href="#">${boardVO.replycnt}</a></span>
										</div>
									</div>
									<%-- <p>${boardVO.content }</p> --%>
									<%-- <p>${fn:substring(boardVO.content,0,15) } ...</p> --%>
									<%-- "${fn:substring(thumNail[status.index],0,12)}" --%>
								</div>
							</article>
													
						
							
						</div>
					</tr>
					</c:forEach>
					</div>
				</div><!-- /row끝, 썸네일게시판  -->
				</c:when>
					 
					 <c:when test="${category eq 'photo' }"> <!-- 포토존게시판 -->
					 <div class="row">
            <!--begin isotope -->
                <div class="isotope col-lg-12">
                <ul id="list" class="portfolio_list clearfix ">
                <c:forEach items="${list}" var="boardVO" varStatus="status" begin="0" end="9">
                    <!--begin portfolio_list -->
                    

                        <!--begin List Item -->

                        <li class="list_item col-lg-4 col-md-4 col-sm-4">
                            <div class="recent-item">
                                <figure class="touching medium">
                                    <div class="pic">
                                        <a href='/sboard/readPage/${category}${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&uid=${login.uid}'>
										 <img src="/displayFile?fileName=${thumNail[status.index]}" height="200" width="200" alt="이미지없음">
										 </a>
                                    </div>
                                    <div class="skin-overlay"></div>
                                    
                                   <c:set value="${fn:substring(thumNail[status.index],0,12)}" var="front"/><!-- 썸네일 ->원본이미지 띄우기   -->
                                   <c:set value="${fn:substring(thumNail[status.index],14, fn:length(thumNail[status.index]))}" var="end"/>
									
                                    <a href="/displayFile?fileName=${front }${end}" class="hover-zoom mfp-image" ><i class="fa fa-search"></i></a>
                                    <a href='/sboard/readPage/${category}${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&uid=${login.uid}' class="hover-link">
                                        <i class="fa fa-link"></i>
                                    </a>
                                    <figcaption class="item-description">
                                        <h5>${boardVO.title}</h5>
                                        <span>${boardVO.writer}</span>
                                    </figcaption>
                                </figure>
                            </div>
                        </li>
                        <!--end List Item -->

          
                    <!--end portfolio_list -->
                    </c:forEach>
                       </ul>       
                </div>
             </div><!-- 포토존게시판 -->
             
				
				
					</c:when>
				
				<c:otherwise>
 								
				<div class="box-body" >
					<table class="table table-hover table-striped" >
					
						<c:forEach items="${list}" var="boardVO">

							<tr style="font-family:Typo_DecoVariety; font-size:20px">
								<%-- <td>${boardVO.bno}</td> --%>
								<td style="width: 40%;padding-left:20px;"><a
									href='/sboard/readPage/${category}${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}&uid=${login.uid}' style="color:#337ab7">
										${boardVO.title} <%-- <strong>[${boardVO.replycnt}  ]</strong> --%>
								</a></td>
								<td class="responsive" style="width:7%">
									<i class="fa fa-comment-o"  title="댓글">&nbsp;&nbsp;&nbsp;&nbsp;${boardVO.replycnt}</i>
								</td>
								<td class="responsive" style="width:7%">								
									<i class="fa fa-thumbs-o-up" title="좋아요" >&nbsp;&nbsp;&nbsp;&nbsp;${boardVO.countlike }</i>
								</td>
								<td class="responsive" style="width:25%">
								<i class="glyphicon glyphicon-eye-open" title="조회수">&nbsp;${boardVO.viewcnt  }</i>
								</td>
								<td class="mailbox-date responsive" style="width:10%"><fmt:formatDate pattern="MM-dd HH:mm"
										value="${boardVO.regdate}" /></td>
								<%-- <td><span class="badge bg-aqua">${boardVO.viewcnt }</span></td> --%>
								<td class="mailbox-subject" style="width:10%">${boardVO.writer} </td>
							</tr>

						</c:forEach>

					</table>
				</div>
				</c:otherwise>
				</c:choose>
				<!-- 게시판리스트 본문 end  -->
				<!-- /.box-body -->


				<div class="box-footer">
				<!--  버튼 -->
 				<button id='newBtn' style="background-color:#8ecbff;color:white;outline:0;border:0">새 글 쓰기</button>
					<div class="text-center">
					
						
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
						
					</div>

				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
<%@include file="../include/footer.jsp"%>
<%@include file="../include/footer2.jsp"%>



<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
		location.replace(self.location);
	}
</script>

<script id="templateAttach" type="text/x-handlebars-template">
	<img src="{{imgsrc}}" alt="Attachment"></span>
</script>  

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "${category}"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {
					
					self.location = "/sboard/register/${category}";

				});
				
				
				
				
				

			});
</script>