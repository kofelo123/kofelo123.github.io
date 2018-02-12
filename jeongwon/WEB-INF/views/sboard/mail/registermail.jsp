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
  <link rel="stylesheet" href="../../../../resources/bootstrap/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">


<!-- Main content -->
    <section class="content">
      <div class="row">
      
        <!-- /.col -->
       
        <div class="col-md-9">
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">쪽지 보내기</h3>
            </div>
            <!-- /.box-header -->
           <form id='mailregister' role='form' action="/sboard/mail/registermail" method="post">
            <div class="box-body">
            <input type=hidden name='sender' value='${login.uid }'>
              <div class="form-group">
                <input class="form-control" type="text" name='targetid' placeholder="받는사람 ID">
              </div>
              <div class="form-group">
                <input class="form-control" type="text" name='title' placeholder="제목:">
              </div>
              <div class="form-group">
                    <textarea id="compose-textarea" name='message' placeholder="내용을 입력하세요" class="form-control" style="height: 300px">
                     
                    </textarea>
              </div>
              
            </div>	
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
                  <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> 보내기</button>
                </form> 
                <button  class="btn btn-default" id="goListBtn"><i class="glyphicon glyphicon-arrow-left"></i> 취소</button>
            
              </div>
              <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> 리셋</button>
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
<!-- iCheck -->
<script src="/resources/bootstrap/plugins/iCheck/icheck.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/bootstrap/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Page Script -->
<script>
  $(function () {
    //Add text editor
    $("#compose-textarea").wysihtml5();
  });
  
  

</script>
<script>
	$(document).ready(
			function() {
	
				$('#goListBtn').on("click", function() {

					self.location = history.back(); 

				});

			});
</script>


