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
				������ϱ�
			</div>
			
			<!-- �Խ��� ���� �κ� -->
			<table id="qna_table_header">
				<tr>
					<td class="table_header_no">�۹�ȣ</td>
					<td class="table_header_title">����</td>
					<td class="table_header_name">�۾���</td>
					<td class="table_header_date">��¥</td>
				</tr>
			</table>
			
			<!-- �Խ��� �Խñ� ����Ʈ �κ� -->
			<table id="qna_table_content">
				<!-- <tr>
					<td class="table_header_no">�۹�ȣ</td>
					<td class="table_header_title">����</td>
					<td class="table_header_name">�۾���</td>
					<td class="table_header_date">��¥</td>
				</tr>
				<tr>
					<td class="table_header_no">�۹�ȣ</td>
					<td class="table_header_title">����</td>
					<td class="table_header_name">�۾���</td>
					<td class="table_header_date">��¥</td>
				</tr>
				<tr>
					<td class="table_header_no">�۹�ȣ</td>
					<td class="table_header_title">����</td>
					<td class="table_header_name">�۾���</td>
					<td class="table_header_date">��¥</td>
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