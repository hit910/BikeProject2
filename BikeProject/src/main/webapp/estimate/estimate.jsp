<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="disign/shadow/js/shadowbox.js"></script>
<script type="text/javascript">
	Shadowbox.init({
		players:["iframe"]
	});
	
	$(function(){
		$('#payment').click(function(){
			Shadowbox.open({
				content: 'estimate/purchase.jsp',
				player: 'iframe',
				title: 'Payment',
				width: 1000,
				height: 550
			});
		});
	});
</script>
</head>
<body>
	<section id="estimateLink">
	<center>
		<c:if test="${sessionScope.id==null }">
			<div>
				�α��� �غ�
			</div>
		</c:if>
		<c:if test="${sessionScope.id!=null }">
			<%-- <c:if test="${sessionScope.type eq 'customer' }"> --%>
				<div id="estimate_home">
					<div id="estimate_title">
						�¶��� ������
					</div>

					<div id="estimate_product">
						<div id="estimate_prodect_list">
		
						</div>
						<div id="estimate_prodect_btn">
							<input type="button" value="����">
							<input type="button" value="����">
							<input type="button" value="�����ϱ�" id="payment">
						</div>
					</div>
					
					<div id="estimate_select">
						<!--  -->
					</div>
				</div>
			<%-- </c:if>
			<c:if test="${sessionScope.type eq 'seller' }">
				<div>
					seller page
				</div>
			</c:if> --%>
		</c:if>
	</center>
	</section>
</body>
</html>