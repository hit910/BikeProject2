<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="login.css">
<script type="text/javascript">
	function loginsend(){
		send.submit();
	}
</script>
</head>
<body>
	<form name="send" action="login.do" method="post">
	<center>
			<div id="loginContainer">
				<input type="text" name="id" placeholder="���̵�" id="idBox">
				<input type="password" name="pwd" placeholder="�н�����" id="pwdBox">
				<input type="button" value="�α���" id="loginBtn" onclick="loginsend();">
				<a href="#" id="join">ȸ������</a>
			</div>
	</center>
	</form>
</body>
</html>