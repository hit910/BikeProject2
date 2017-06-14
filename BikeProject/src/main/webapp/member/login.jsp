<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="disign/shadow/js/shadowbox.js"></script>
<link rel="stylesheet" type="text/css" href="member/login.css">
<script type="text/javascript">
	function loginsend(test){
		send.submit();
	};    
	/* function entersend() {
		if(window.child.event.keyCode==13) loginsend();
	}; */
</script>
</head>
<body>
	<form name="send" action="login.do" method="post">
	<center>
			<div id="loginContainer">
				<input type="text" name="id" placeholder="아이디" id="idBox">
				<input type="password" name="pwd" placeholder="패스워드" id="pwdBox">
				<input type="button" value="로그인" id="loginBtn" onclick="loginsend();" onkeydown="entersend();">
				<!-- <a href="#" id="join">회원가입</a> -->
			</div>
	</center>
	</form>
</body>
</html>