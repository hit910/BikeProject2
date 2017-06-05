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
				content: 'purchase.do',
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
				로그인 해봐
			</div>
		</c:if>
		<c:if test="${sessionScope.id!=null }">
			<%-- <c:if test="${sessionScope.type eq 'customer' }"> --%>
				<div id="estimate_home">
					<div class="row" style="margin-top: 50px;margin-bottom: 50px;">
	                <div class="col-lg-12 text-center">
	                    <h2>Online estimate sheet</h2>
	                    <!-- <hr class="star-primary"> -->
	                </div>
				</div>
					<div id="estimate_Container" style="width: 100%; height: 100%; display: inline-block;">
					<div id="estimate_product">
						<div id="estimate_prodect_list">
		
						</div>
					</div>
					
					<div id="estimate_select">
						<!--  -->
							<input type="button" value="결제하기" id="payment">
					</div>
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