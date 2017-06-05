<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
<script type="text/javascript">
	function send(){
		var f=document.frm;
		if(f.name.value==""){
			alert("이름을 입력하세요.");
			f.name.focus();
			return;
		}
		if(f.subject.value==""){
			alert("제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		if(f.content.value==""){
			alert("내용을 입력하세요.");
			f.content.focus();
			return;
		}		
		if(f.pwd.value==""){
			alert("비밀번호를 입력하세요.");
			f.pwd.focus();
			return;
		}	
		f.submit();
	};

</script>
</head>
<body>
	<center>
		<h3>답변하기</h3>
		<form action="reply_ok.do" method="post" name="frm">
			<table width="700" id="table_content">
				<tr height="27">
					<td width="20%" align="center">이름</td>
					<td width="80%" align="left">
						<input type="text" size="10" name="name">
						<input type="hidden" name="pno" value="${no }">
					</td>
				</tr>
				
				<tr height="27">
					<td width="20%" align="center">이메일</td>
					<td width="80%" align="left">
						<input type="text" size="45" name="email" >
					</td>
				</tr>		
				<tr height="27">
					<td width="20%" align="center">제목</td>
					<td width="80%" align="left">
						<input type="text" size="45" name="subject" >
					</td>
				</tr>
				<tr height="27">
					<td width="20%" align="center">내용</td>
					<td width="80%" align="left">
						<textarea rows="8" cols="50" name="content">
						</textarea>
					</td>
				</tr>			
				<tr height="27">
					<td width="20%" align="center">비밀번호</td>
					<td width="80%" align="left">
						<input type="password" size="10" name="pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="답변" onclick="send()">
						<input type="button" value="취소" onclick="javascript:history.back()">
					</td>
				</tr>													
			</table>
		
		</form>
	</center>
</body>
</html>










