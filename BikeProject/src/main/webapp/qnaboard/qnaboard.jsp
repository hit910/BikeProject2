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
</head>
<body>
	<section id="qnaboard">
	<center>
		<!-- <h3>Q&A 게시판</h3> -->
		<table border="0" width="920">
			<tr>
				<td align="left">
					<a href="../insert.do">
						<img id="write" alt="글쓰기" src="image/pen2.png" border="0px">
					</a>
				</td>
			</tr>
		</table>
		
		<table id="table_content" border="0" width="900">
			<tr>
				<th width="10%">번호</th>
				<th width="45%">제목</th>
				<th width="15%">이름</th>
				<th width="20%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
			<c:forEach var="vo" items="${list }">
				<tr id="dataTr">
					<td width="10%" align="center">${vo.no }</td>
					<td width="45%" align="left">

					<c:if test="${vo.group_tab !=0 }">
						<c:forEach var="i" begin="1" end="${vo.group_tab }">
							&nbsp;&nbsp;
						</c:forEach>
					<img alt="댓글" src="image/icon_reply.gif">
					</c:if>
					
					<c:if test="${msg ne vo.subject }">
						<a href="../content.do?no=${vo.no }">${vo.subject }</a>
						<sup><img src="image/new.gif"></sup>&nbsp;
					</c:if>
					
					
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
		<table border="0" width="900" style="color: white;" >
			<tr>
				<td align="right">
					<a href="qnaboard.do?page=${curpage>1 ? curpage-1:curpage }">
						<img alt="앞으로" src="image/btn_pagePrev.gif" border="0">
					</a>&nbsp;
					<a href="qnaboard.do?page=${curpage<totalpage ? curpage+1:curpage }">
						<img alt="뒤로" src="image/btn_pageNext.gif" border="0">
					</a>&nbsp;&nbsp;
					${curpage } page / ${totalpage } pages					
				</td>
			</tr>
		</table>
	</center>
	</section>
</body>
</html>