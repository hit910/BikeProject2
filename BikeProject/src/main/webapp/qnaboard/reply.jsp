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
			alert("�̸��� �Է��ϼ���.");
			f.name.focus();
			return;
		}
		if(f.subject.value==""){
			alert("������ �Է��ϼ���.");
			f.subject.focus();
			return;
		}
		if(f.content.value==""){
			alert("������ �Է��ϼ���.");
			f.content.focus();
			return;
		}		
		if(f.pwd.value==""){
			alert("��й�ȣ�� �Է��ϼ���.");
			f.pwd.focus();
			return;
		}	
		f.submit();
	};

</script>
</head>
<body>
	<center>
		<h3>�亯�ϱ�</h3>
		<form action="reply_ok.do" method="post" name="frm">
			<table width="700" id="table_content">
				<tr height="27">
					<td width="20%" align="center">�̸�</td>
					<td width="80%" align="left">
						<input type="text" size="10" name="name">
						<input type="hidden" name="pno" value="${no }">
					</td>
				</tr>
				
				<tr height="27">
					<td width="20%" align="center">�̸���</td>
					<td width="80%" align="left">
						<input type="text" size="45" name="email" >
					</td>
				</tr>		
				<tr height="27">
					<td width="20%" align="center">����</td>
					<td width="80%" align="left">
						<input type="text" size="45" name="subject" >
					</td>
				</tr>
				<tr height="27">
					<td width="20%" align="center">����</td>
					<td width="80%" align="left">
						<textarea rows="8" cols="50" name="content">
						</textarea>
					</td>
				</tr>			
				<tr height="27">
					<td width="20%" align="center">��й�ȣ</td>
					<td width="80%" align="left">
						<input type="password" size="10" name="pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="�亯" onclick="send()">
						<input type="button" value="���" onclick="javascript:history.back()">
					</td>
				</tr>													
			</table>
		
		</form>
	</center>
</body>
</html>









