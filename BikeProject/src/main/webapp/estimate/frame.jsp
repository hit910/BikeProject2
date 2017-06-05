<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
	<div id="estimate_product">
					<div id="estimate_prodect_list">
						<div id="purchaseHeader">
							<font style="font-size: 20px; font-weight: bold;">
						프레임
					</font>
				</div>
				<div id="items">
					<table id="itemsTable">
						<tr>
							<th width="20%" align="center">품목</th>
							<th width="50%" align="center">이름</th>
							<th width="30%" align="center">가격</th>
						</tr>
					</table>
					<div id="scrollList">
						<table border="0" cellspacing="1" cellpadding="0" width="100%">
							<c:forEach var="vo" items="${list }">
								<tr>
									<td width="20%" align="center">프레임</td>
									<td width="50%" align="center">${vo.fname }</td>
									<td width="30%" align="center">${vo.fprice }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</center>
</body>
</html>