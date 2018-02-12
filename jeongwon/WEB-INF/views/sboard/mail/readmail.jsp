<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@ include file="../../include/analytics.jsp"%>	

<meta name="viewport" content="width=device-width, initial-scale=1.0">


 <link rel="stylesheet" href="../../../../resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- fullCalendar 2.2.5-->
  <link rel="stylesheet" href="../../../../resources/bootstrap/plugins/fullcalendar/fullcalendar.min.css">
  <link rel="stylesheet" href="../../../../resources/bootstrap/plugins/fullcalendar/fullcalendar.print.css" media="print">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../../../resources/bootstrap/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../../../resources/bootstrap/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../../../resources/bootstrap/plugins/iCheck/flat/blue.css">
  
 <!-- Main content -->
    <section class="content">
      <div class="row">
                
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">쪽지 수신함</h3>

              <div class="box-tools pull-right">
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-read-info">
                <h3>${messageVO.title }</h3>
                <h5>From: ${messageVO.sender }
                  <span class="mailbox-read-time pull-right"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${messageVO.sendate}" /></span></h5>
              </div>
             
              <!-- /.mailbox-controls -->
              <div class="mailbox-read-message">
               	${messageVO.message}
              
                
              </div>
              <!-- /.mailbox-read-message -->
            </div>
       
            <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="button" class="btn btn-default"><i class="fa fa-reply"></i> 답장</button>
                <button type="button" class="btn btn-default"><i class="fa fa-share"></i> 전달</button>
              </div>
              <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i> 삭제</button>
              <button id="goListBtn" class="btn btn-default"><i class="fa fa-print" ></i> 목록</button>
            </div>
            <!-- /.box-footer -->
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
<!-- AdminLTE for demo purposes -->
<script src="/resources/bootstrap/js/demo.js"></script>


<script>
	$(document).ready(
			function() {
	
				$('#goListBtn').on("click", function() {

					self.location = "listmail?uid=${login.uid }";

				});

			});
</script>
