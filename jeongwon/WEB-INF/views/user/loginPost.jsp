<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${userVO == null }"> <!-- model의 UserVO여부로 로그인 성공 실패   -->
		<script type="text/javascript">
		alert('아이디혹은 비밀번호가 일치하지 않습니다.');
		self.location="/user/login";
		</script>
	</c:if>
	<c:if test="${userVO != null }">
		<c:redirect url="/sboard/list"></c:redirect>
	</c:if>

</body>
</html>

