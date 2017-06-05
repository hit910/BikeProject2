<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="table.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<section id="qnaboard">
	<center>
		<h3>�ڷ��</h3>
		<table border="0" width="700">
			<tr>
				<td align="left">
				<a href="insert.do">
				�۾���</a>
				</td>
			</tr>
		</table>
		
		<table id="table_content" border="0" width="700">
			<tr>
				<th width="10%">��ȣ</th>
				<th width="45%">����</th>
				<th width="15%">�̸�</th>
				<th width="20%">�ۼ���</th>
				<th width="10%">��ȸ��</th>
			</tr>
			<c:forEach var="vo" items="${list }">
				<tr id="dataTr">
					<td width="10%" align="center">${vo.no }</td>
					<td width="45%" align="left">
						
					<a href="../content.do?no=${vo.no }">${vo.subject } </a>
					</td>
					<td width="15%" align="center">${vo.name }</td>
					<td width="20%" align="center">
						<fmt:formatDate value="${vo.regdate }"
										pattern="yyyy-MM-dd"/>
					</td>
					<td width="10%" align="center">${vo.hit }</td>
				</tr>
			</c:forEach>
		</table>
		<table border="0" width="700">
			<tr>
				<td align="right">
					<a href="../qnaboard/qnaboard.do?page=${curpage>1 ? curpage-1:curpage }">����</a>&nbsp;
					<a href="../qnaboard/qnaboard.do?page=${curpage<totalpage ? curpage+1:curpage }">����</a>&nbsp;&nbsp;
					${curpage } page / ${totalpage } pages
				</td>
			</tr>
		</table>
	</center>
	</section>
</body>
</html>