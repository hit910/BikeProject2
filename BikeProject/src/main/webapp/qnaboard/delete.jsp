<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="qnaboard/table.css">
</head>
<body>
	<center>
		<form action="delete_ok.do" method="post">
			<table id="table_content3" width="350">
				<tr>
					<td align="left">
					��й�ȣ : <input type="password" size="12" name="pwd">
						<input type="hidden" name="no" value="${no }">
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="submit" value="����">
						<input type="button" value="���" 
								onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
















