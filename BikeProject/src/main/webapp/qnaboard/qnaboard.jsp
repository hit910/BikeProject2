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
	            $("#qnaboard_div").html(response);
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
				묻고답하기
			</div>
			
			<!-- 게시판 제목 부분 -->
			<table id="qna_table_header">
				<tr>
					<td class="table_header_no">글번호</td>
					<td class="table_header_title">제목</td>
					<td class="table_header_name">글쓴이</td>
					<td class="table_header_date">날짜</td>
				</tr>
			</table>
			
			<!-- 게시판 게시글 리스트 부분 -->
			<table id="qna_table_content">
				<!-- <tr>
					<td class="table_header_no">글번호</td>
					<td class="table_header_title">제목</td>
					<td class="table_header_name">글쓴이</td>
					<td class="table_header_date">날짜</td>
				</tr>
				<tr>
					<td class="table_header_no">글번호</td>
					<td class="table_header_title">제목</td>
					<td class="table_header_name">글쓴이</td>
					<td class="table_header_date">날짜</td>
				</tr>
				<tr>
					<td class="table_header_no">글번호</td>
					<td class="table_header_title">제목</td>
					<td class="table_header_name">글쓴이</td>
					<td class="table_header_date">날짜</td>
				</tr> -->
				<c:forEach var="vo" items="${list }">
					<tr>
						<td class="table_header_no">${vo.b_no }</td>
						<td class="table_header_title">${vo.b_title }</td>
						<td class="table_header_name">${vo.b_name }</td>
						<td class="table_header_date">${vo.b_regdate }</td>
					</tr>
				</c:forEach>
			</table>
			
			<table id="qna_table_bottom">
				<tr>
					<td>1111111111111111111</td>
				</tr>
			</table>
		</div>
	</center>
	</section>
</body>
</html>