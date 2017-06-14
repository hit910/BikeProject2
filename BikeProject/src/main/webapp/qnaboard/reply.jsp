<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="qnaboard/table.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
var fileIndex=0;
$(function(){
	$('#addBtn').click(function(){
		$('.fileView').append(
			'<tr id=f'+fileIndex+'>'
			+'<td width=20%>파일'+(fileIndex+1)+"</td>"
			+'<td width=80% align=left>'
			+'<input type=file name=files['+fileIndex+'] size=30>'
			+'</td></tr>'
		);
		fileIndex=fileIndex+1;
	});
	$('#removeBtn').click(function(){
		$('#f'+(fileIndex-1)).remove();
		fileIndex=fileIndex-1;
	});
});	
	
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
		<h2>답변하기</h2>
		<form:form method="post" action="reply_ok.do" name="frm"
					enctype="multipart/form-data"
					modelAttribute="uploadForm">
			<table width="900" id="table_content">
				<tr height="60">
					<td width="20%" align="center">이름</td>
					<td width="80%" align="left">
						<input type="text" size="10" name="name">
						<input type="hidden" name="pno" value="${no }">
					</td>
				</tr>
		
				<tr height="60">
					<td width="20%" align="center">제목</td>
					<td width="80%" align="left">
						<input type="text" size="58" name="subject" >
					</td>
				</tr>
				<tr height="60">
					<td width="20%" align="center">내용</td>
					<td width="80%" align="left">
						<textarea rows="10" cols="60" name="content">
						</textarea>
					</td>
				</tr>
				<tr height="60">
					<td width="20%" align="center">첨부파일</td>
					<td width="80%" align="left">
						<table id="table_content2" width="620">
							<tr>
								<td colspan="2" align="right">
									<input type="button" value="추가" id="addBtn"> 
									<input type="button" value="취소" id="removeBtn"> 
								</td>
							</tr>
						</table>
					<table id="table_content2" width="620" class="fileView">
							
					</table>
					</td>
				</tr>			
				<tr height="60">
					<td width="20%" align="center">비밀번호</td>
					<td width="80%" align="left">
						<input type="password" size="10" name="pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input id="button_size" type="button" value="답변" onclick="send()">
						<input id="button_size" type="button" value="취소" onclick="javascript:history.back()">
					</td>
				</tr>													
			</table>
		</form:form>
	</center>
</body>
</html>










