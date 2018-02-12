<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/headeradmin.jsp"%>
<%@ include file="../include/analytics.jsp"%>	


<style>

.list-sort{
    list-style: none;
    padding: 0;
    margin: 10px 0 0 5px;
  }
.list-sort li{
 float:left;
 margin-right:15px;
}
</style>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->


		<div class="col-md-12" style="width:80%">
			<!-- general form elements -->
			<div class='box'>
				


				


				<div class="box-header with-border">
					<h3 class="box-title">게시물 관리</h3>
					 <ul class="list-sort">
                            <li><a href="/admin/superadmin/free" data-sort="id" data-order="desc" class="category-sort-link active">자유게시판</a></li>
                            <li><a href="/admin/superadmin/news" data-sort="voteCount" data-order="desc" class="category-sort-link ">언론보도</a></li>
                            <li><a href="/admin/superadmin/visit" data-sort="noteCount" data-order="desc" class="category-sort-link ">방문후기</a></li>
                            <li><a href="/admin/superadmin/notice" data-sort="scrapCount" data-order="desc" class="category-sort-link ">공지사항</a></li>
                            <li><a href="/admin/superadmin/qna" data-sort="viewCount" data-order="desc" class="category-sort-link ">묻고답하기</a></li>
                        </ul>
				</div>
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
								<td>
									<button id="userDrop" name="delete" style="width:80px;" onClick="location.href='/admin/boardDrop?bno=${boardVO.bno}&category=${boardVO.category }'">삭제</button>
								</td>
							</tr>

						</c:forEach>

					</table>
				</div>
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


<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
		location.replace(self.location);
	}
</script>

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});
				
				

			});
</script>

<%@include file="../include/adminfooter.jsp"%>
