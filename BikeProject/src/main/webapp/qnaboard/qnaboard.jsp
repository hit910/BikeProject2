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
<script type="text/javascript">
	   $(function(){
	      $.ajax({
	         type:"POST",
	         url:"qnaboard/qnaboard.do",
	         success:function(response){
	            $("#qna_table_content").html(response);
	         }
	      });
	   });
	</script>

</head>
<body id="qnaBody">
	<section id="qnaboard">
	<center>
		<div id="qnaboard_div">
			<div id="qnaboard_title">
				������ϱ�
			</div>
			
			<!-- �Խ��� ���� �κ� -->
			<table id="qna_table_header">
				<tr class="qnaTr">
					<td id="table_header_no">�۹�ȣ</td>
					<td id="table_header_title">����</td>
					<td id="table_header_name">�۾���</td>
					<td id="table_header_date">��¥</td>
				</tr>
			</table>
			
			<!-- �Խ��� �Խñ� ����Ʈ �κ� -->
			<table id="qna_table_content">
				
				<c:forEach var="vo" items="${list }">
					<tr class="qnaTr">
						<td id="table_content_no">${vo.b_no }</td>
						<td id="table_content_title">
							<a href="content.do?b_no=${vo.b_no }">${vo.b_title }</a>
						</td>
						<td id="table_content_name">${vo.b_name }</td>
						<td id="table_content_date">
							<fmt:formatDate value="${vo.b_regdate }" pattern="yyyy-MM-dd"/>
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<table id="qna_table_bottom">
				<tr>
					<td align="right">
					<a href="qnaboard.do?page=${curpage>1?curpage-1:curpage }">
						<img alt="������" src="image/btn_pagePrev.gif" border="0">
					</a>&nbsp;
					<a href="qnaboard.do?page=${curpage<totalPage?curpage+1:curpage }">
						<img alt="�ڷ�" src="image/btn_pageNext.gif" border="0">
					</a>&nbsp;&nbsp;
					${curpage } page / ${totalPage } pages					
				</td>
				</tr>
			</table>
		</div>
	</center>
	</section>
</body>
</html>