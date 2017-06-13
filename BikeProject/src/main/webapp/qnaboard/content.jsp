<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="qnaboard/table.css">
</head>
<body id="bg_img">
	<center>
		<h2>내용보기</h2>
		<table id="table_content" width="900">
			<tr>
				<th width="20%">번호</th>
				<td width="30%" align="center">${vo.no }</td>
				<th width="20%">작성일</th>
				<td width="30%" align="center">
					<fmt:formatDate value="${vo.regdate }" 
								pattern="yyyy-MM-dd"/>
				</td>				
			</tr>
			<tr>
				<th width="20%">이름</th>
				<td width="30%" align="center">${vo.name }</td>
				<th width="20%">조회수</th>
				<td width="30%" align="center">${vo.hit }</td>				
			</tr>
			<tr>
				<th width="20%">제목</th>
				<td colspan="3">${vo.subject }</td>
			</tr>
			
			<c:if test="${vo.filecount !=0 }">
			 <tr>
			 	<th width="20%">첨부파일</th>
			 	<td colspan="3" align="left">
			 		<c:forEach var="fname" items="${vo.nameList }">
			 			<a href="download.do?fn=${fname }">${fname }</a>&nbsp;
			 		</c:forEach>
			 	</td>
			 </tr>	
			</c:if>
			
			<tr>
				<td colspan="4" valign="top" align="left" height="350">
					<pre>${vo.content }</pre>
				</td>
			</tr>				
		</table>	
		
		<table id="table_content2" width="900">
			<tr>
				<td align="right">
					<a href="reply.do?no=${vo.no }">답글</a>&nbsp;
					<a href="update.do?no=${vo.no }">수정</a>&nbsp;
					<a href="delete.do?no=${vo.no }">삭제</a>&nbsp;
					<a href="qnaboard/qnaboard.do">목록</a>&nbsp;
				</td>
			</tr>
		</table>
	</center>
</body>
</html>