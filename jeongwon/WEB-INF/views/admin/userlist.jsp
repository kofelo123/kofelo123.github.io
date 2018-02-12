<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/headeradmin.jsp"%>
<%@ include file="../include/analytics.jsp"%>	
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->


		<div class="col-md-12" style="width:80%">
			<!-- general form elements -->
			<div class='box'>
				


				


			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">사용자 명단</h3>
				</div>
				<div class="box-body">
					<table class="table table-hover table-striped" >
						<tr>
							<th style="width: 140px">아이디</th>
							<th style="width: 150px">이름</th>
							<th>연락처</th>
							<th>메일</th>
							
							<th style="width: 100px">권한</th>
							<th style="width:100px">변경</th>
							<th style="width:100px">삭제</th>
						</tr>

						<c:forEach items="${userVO}" var="userlist">
							
							<tr>
								<td>${userlist.uid}</td>
								<td>${userlist.uname}</td>
								<td>${userlist.phone}</td>
								<td>${userlist.email }</td>
								<td>${userlist.authority }</td>
								<td>
									<button id="authoritymodify" name="modify" onClick="window.location.href='/admin/authmodify?uid=${userlist.uid}&authority=${userlist.authority}'">변경</button>
								</td>
								<td>
									<button id="userDrop" name="delete" onClick="window.location.href='/admin/userDrop?uid=${userlist.uid}&authority=${userlist.authority}'">삭제</button>
								</td>
							</tr>

						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->


				<div class="box-footer">
				
					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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
