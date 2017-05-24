<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

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
			<c:if test="${sessionScope.type eq 'customer' }">
				<div id="estimate_home">
					<div id="estimate_title">
						온라인 견적서
					</div>

					<div id="estimate_product">
						<div id="estimate_prodect_list">
		
						</div>
						<div id="estimate_prodect_btn">
							<input type="button" value="다음">
							<input type="button" value="이전">
						</div>
					</div>
					
					<div id="estimate_select">
		
					</div>
				</div>
			</c:if>
			<c:if test="${sessionScope.type eq 'seller' }">
				<div>
					seller page
				</div>
			</c:if>
		</c:if>
	</center>
	</section>
</body>
</html>