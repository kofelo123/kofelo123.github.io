function go_save() {
  if (document.form.uid.value == "") {
    alert("아이디를 입력하여 주세요.");
    document.form.uid.focus();
  } else if (document.form.uid.value != document.form.reid.value) {
    alert("중복확인을 클릭하여 주세요.");
    document.form.uid.focus();
  } else if (document.form.upw.value == "") {
    alert("비밀번호를 입력해 주세요.");
    document.form.upw.focus();
  } else if ((document.form.upw.value != document.form.upwCheck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.form.upw.focus();
  } else if (document.form.uname.value == "") {
    alert("이름을 입력해 주세요.");
    document.form.uname.focus();
  } else if (document.form.email.value == "") {
    alert("이메일을 입력해 주세요.");
    document.form.email.focus();
  } else {
    document.form.action = "/user/joinPost";
    document.form.submit();
  }
}

function idcheck() {
  if (document.form.uid.value == "") {
    alert('아이디를 입력하여 주십시오.');
    document.form.uid.focus();
    return;
  }
 var url = "/user/idcheck?uid=" 
+ document.form.uid.value;//? 로 바꾸니 controller requestmapping이 인식됨-> 동시에 파라미터가 잘전달됨.
 /* var url = "/user/idcheck&uid="   ///뒤늦게 보니 웃기다. 당연한건데..
+ document.form.uid.value;*/
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=400, height=250, left=1100, top=340");
  
 
}/**/

function post_zip() {
  var url = "/user/findZipNum";
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=400, top=400, left=1100 ");
}

/*function go_next() {
  if (document.form.okon1[0].checked == true) {
    document.form.action = "NonageServlet?command=join_form";
    document.form.submit();
  } else if (document.form.okon1[1].checked == true) {
    alert('약관에 동의하셔야만 합니다.');
  
}*/

function mailcheck(){
	
	if(document.form.company.value!="직접입력"){
		document.form.email2.value=document.form.company.value;
	}else if(document.form.company.value=="직접입력"){
		document.form.email2.value="";
	}
	
	
}