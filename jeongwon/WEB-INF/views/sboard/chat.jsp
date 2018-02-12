<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>채팅</title>
    
     <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/bootstrap/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/bootstrap/css/skins/_all-skins.min.css">
  
 

</head>
<body>

	<div class="col-md-3">
	<div class="box box-primary direct-chat direct-chat-primary" style="border-top-color:#f39c12;">
	
	 <div class="box-header with-border">
              <h3 class="box-title"> 채팅</h3>

              <div class="box-tools pull-right">
                <span data-toggle="tooltip" title="3 New Messages" class="badge bg-yellow">^.^</span>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
                  <i class="fa fa-comments"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            
             <div class="box-body">
            <div class="direct-chat-messages">
    <fieldset >
        <textarea id="messageWindow" rows="12" cols="85" readonly="true" style="background-color:#faffe7;border-color: #ffcf84;color: #6b3130;"></textarea>
        <br/> </div>
        
     
        
                 <!-- Contacts are loaded here -->
              <div class="direct-chat-contacts">
                <ul class="contacts-list">
                  <li>
                    <a href="#">
                      <img class="contacts-list-img" src="/resources/bootstrap/img/king.jpg" alt="User Image">

                      <div class="contacts-list-info">
                            <span class="contacts-list-name">
                              	관리자
                              <small class="contacts-list-date pull-right">10/2016</small>
                            </span>
                        <span class="contacts-list-msg"><br/>Smart It 허정원-웹소켓을 사용한 채팅페이지 입니다.<br/><br/> 채팅로그를 따로 저장,기록하지 않습니다.<br/><br/> 
                        로그인 후 자유롭게 사용해 주세요. <br/><br/> 향후 지속 업데이트 예정입니다.</span>
                      </div>
                      <!-- /.contacts-list-info -->
                    </a>
                  </li>
                  <!-- End Contact Item -->
                </ul>
                <!-- /.contatcts-list -->
              </div>
              
              
     
        
        
          <div class="box-footer">
           <div class="input-group">
        <input id="inputMessage" type="text" placeholder="내용을 입력하세요"  class="form-control"  onKeyDown="onKeyDown()" style="border-color:#fedea5;color:#6b3130">
        <span class="input-group-btn">
        <input type="submit" value="전송" onclick="send()" class="btn btn-primary btn-flat" style="background-color:#cdf3c4;border-color:#89efc0;color:green" />
        </span>
        </div>
        </div>
    </fieldset>
   
    </div>
    </div>
    </div>
</body>
    <script type="text/javascript">
        
        var textarea = document.getElementById("messageWindow");
      
        var webSocket = new WebSocket('ws://localhost:8080/broadcasting');
        var inputMessage = document.getElementById('inputMessage');
        var name = "${login.uname }: ";
 
	
		
    webSocket.onerror = function(event) {
      onError(event)
    };
    webSocket.onopen = function(event) {
      onOpen(event)
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    //
/*     webSocket.onclose = function(event){
    	onClose(event)
    };
     */
    function onMessage(event) {
        textarea.value += "" + event.data + "\n";
    }
    function onOpen(event) { 		
        textarea.value += name+"님 어서오세요.\n";
        webSocket.send(name+"님이 입장하셨습니다.");
    }
    function onError(event) {
      alert(event.data);
   		
    }
    function send() {
        textarea.value += name + inputMessage.value + "\n";
        webSocket.send(name+inputMessage.value);
        inputMessage.value = "";
    }
    //
/*     function onClose(event) {
    	webSocket.send(name+"님이 퇴장하셨습니다.");
    } */
    
    /* 엔터키처리   */
    function onKeyDown()
    {
    	 if(event.keyCode == 13)
         {
    		 send()
         }
         
    }
  
 
    
  </script>
  <!-- 
  Direct Chat
      <div class="row">
        <div class="col-md-3">
          DIRECT CHAT PRIMARY
          <div class="box box-primary direct-chat direct-chat-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Direct Chat</h3>

              <div class="box-tools pull-right">
                <span data-toggle="tooltip" title="3 New Messages" class="badge bg-light-blue">3</span>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
                  <i class="fa fa-comments"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            
            
            
            
            
            /.box-header
            <div class="box-body">
              Conversations are loaded here
              <div class="direct-chat-messages">
                Message. Default to the left
                <div class="direct-chat-msg">
                  <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-left">Alexander Pierce</span>
                    <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                  </div>
                  /.direct-chat-info
                  <img class="direct-chat-img" src="/resources/bootstrap/dist/img/user1-128x128.jpg" alt="Message User Image">/.direct-chat-img
                  <div class="direct-chat-text">
                    Is this template really for free? That's unbelievable!
                  </div>
                  /.direct-chat-text
                </div>
                /.direct-chat-msg

                Message to the right
                <div class="direct-chat-msg right">
                  <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-right">Sarah Bullock</span>
                    <span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
                  </div>
                  /.direct-chat-info
                  <img class="direct-chat-img" src="../dist/img/user3-128x128.jpg" alt="Message User Image">/.direct-chat-img
                  <div class="direct-chat-text">
                    You better believe it!
                  </div>
                  /.direct-chat-text
                </div>
                /.direct-chat-msg
              </div>
              /.direct-chat-messages

              Contacts are loaded here
              <div class="direct-chat-contacts">
                <ul class="contacts-list">
                  <li>
                    <a href="#">
                      <img class="contacts-list-img" src="/resources/bootstrap/dist/img/user1-128x128.jpg" alt="User Image">

                      <div class="contacts-list-info">
                            <span class="contacts-list-name">
                              Count Dracula
                              <small class="contacts-list-date pull-right">2/28/2015</small>
                            </span>
                        <span class="contacts-list-msg">How have you been? I was...</span>
                      </div>
                      /.contacts-list-info
                    </a>
                  </li>
                  End Contact Item
                </ul>
                /.contatcts-list
              </div>
              /.direct-chat-pane
            </div>
            /.box-body
            <div class="box-footer">
              <form action="#" method="post">
                <div class="input-group">
                  <input type="text" name="message" placeholder="Type Message ..." class="form-control">
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary btn-flat">Send</button>
                      </span>
                </div>
              </form>
            </div>
            /.box-footer
          </div>
          /.direct-chat
        </div>
        /.col
        </div>
      
        jQuery 2.2.3
          -->
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
</html>