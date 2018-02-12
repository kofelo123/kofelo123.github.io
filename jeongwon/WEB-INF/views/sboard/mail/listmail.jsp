<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@ include file="../../include/analytics.jsp"%>	

<meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- fullCalendar 2.2.5-->
  <link rel="stylesheet" href="/resources/plugins/fullcalendar/fullcalendar.min.css">
  <link rel="stylesheet" href="/resources/plugins/fullcalendar/fullcalendar.print.css" media="print">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/bootstrap/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/bootstrap/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/bootstrap/plugins/iCheck/flat/blue.css">
  
 
  
  
  
  <!-- Main content -->
    <section class="content">
      <div class="row">
       
        <!-- /.col -->
        <div class="col-md-9" style="width:100%">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">쪽지함</h3>

              <div class="box-tools pull-right">
                <div class="has-feedback">
                  <input type="text" class="form-control input-sm" placeholder="검색">
                  <span button id='searchBtn' class="glyphicon glyphicon-search form-control-feedback"></button></span>
                </div>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                <div class="pull-right">
                
                <button id='newBtn'>쪽지 보내기</button>
                 <!--  1-50/200
                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                  </div>
                  /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <tbody>
                  
                  <c:forEach items="${list}" var="MessageVO">

							<tr>
							
								<td><input type="checkbox"></td>
								<td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
								<td class="mailbox-name">${MessageVO.sender}</td>
								<td class="mailbox-subject"><a
									href='/sboard/mail/readmail${pageMaker.makeSearch(pageMaker.cri.page) }&mid=${MessageVO.mid}'>
										${MessageVO.title} 
								</a></td>
								<c:if test="${MessageVO.readcheck=='y' }">
								 <td class="mailbox-attachment"><i class="glyphicon glyphicon-ok"></i></td>
								</c:if>
								<c:if test="${MessageVO.readcheck=='n' }">
								 <td class="mailbox-attachment"></td>
								</c:if>
								<td class="mailbox-date"><fmt:formatDate pattern="MM-dd HH:mm"
										value="${MessageVO.sendate}" /></td>
								
								
								

						</c:forEach>
                  
                  
             <!--      <tr>
                    <td><input type="checkbox"></td>
                    
                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                    <td class="mailbox-name"><a href="/sboard/mail/readmail">Alexander Pierce</a></td>
                    <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this problem...
                    </td>
                    <td class="mailbox-attachment"></td>
                    <td class="mailbox-date">5 mins ago</td>
                  </tr>
                  <tr>
                    <td><input type="checkbox"></td>
                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                    <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                    <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this problem...
                    </td>
                    <td class="mailbox-attachment"><i class="glyphicon glyphicon-ok"></i></td>
                    <td class="mailbox-date">28 mins ago</td>
                  </tr>
                 -->
                
                
                  </tbody>
                </table>
                <!-- /.table -->
              </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
           
					
				
               
               <div class="text-center">
               
               
                 	<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="listmail${pageMaker.makeSearch(pageMaker.startPage - 1) }&uid=${login.uid }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="listmail${pageMaker.makeSearch(idx)}&uid=${login.uid }">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="listmail${pageMaker.makeSearch(pageMaker.endPage +1) }&uid=${login.uid }">&raquo;</a></li>
							</c:if>

						</ul>
						
					</div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
    
    
    <!-- jQuery 2.2.3 -->
<script src="/resources/bootstrap/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="/resources/bootstrap/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/resources/bootstrap/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/resources/bootstrap/js/app.min.js"></script>
<!-- iCheck -->
<script src="/resources/bootstrap/plugins/iCheck/icheck.min.js"></script>
<!-- Page Script -->
    
    <script>
  $(function () {
    //Enable iCheck plugin for checkboxes
    //iCheck for checkbox and radio inputs
    $('.mailbox-messages input[type="checkbox"]').iCheck({
      checkboxClass: 'icheckbox_flat-blue',
      radioClass: 'iradio_flat-blue'
    });

    //Enable check and uncheck all functionality
    $(".checkbox-toggle").click(function () {
      var clicks = $(this).data('clicks');
      if (clicks) {
        //Uncheck all checkboxes
        $(".mailbox-messages input[type='checkbox']").iCheck("uncheck");
        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
      } else {
        //Check all checkboxes
        $(".mailbox-messages input[type='checkbox']").iCheck("check");
        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
      }
      $(this).data("clicks", !clicks);
    });

    //Handle starring for glyphicon and font awesome
    $(".mailbox-star").click(function (e) {
      e.preventDefault();
      //detect type
      var $this = $(this).find("a > i");
      var glyph = $this.hasClass("glyphicon");
      var fa = $this.hasClass("fa");

      //Switch states
      if (glyph) {
        $this.toggleClass("glyphicon-star");
        $this.toggleClass("glyphicon-star-empty");
      }

      if (fa) {
        $this.toggleClass("fa-star");
        $this.toggleClass("fa-star-o");
      }
    });
  });
</script>
    
<script>
	$(document).ready(
			function() {			

				$('#newBtn').on("click", function(evt) {

					self.location = "registermail";

				});

			});
</script>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("전송이 완료되었습니다.");
		location.replace(self.location);
	}
</script>


