<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${vo.uid != 'admin' }"> <!-- 쿼리로 부터 일반 로그인처럼 아이디 and 패스워드 일치하는 UserVO를 받아온다음 그것의 아이디가 admin인지 확인  -->
		<script type="text/javascript">
		alert('아이디혹은 비밀번호가 일치하지 않습니다.');
		self.location="/user/login";
		</script>
	</c:if>
	<c:if test="${vo.uid == 'admin' }">
		<c:redirect url="/admin/userlist"></c:redirect>
	</c:if>
	
</body>
</html>