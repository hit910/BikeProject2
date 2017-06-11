<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate/addProduct.css">
</head>
<body>
	<center>
		<div id="root">
			<div class='css3-tab'>
			<input type='radio' name='a' id='tabFrame' tabindex="1" checked>
			<input type='radio' name='a' id='tabGroupset' tabindex="2">
			<input type='radio' name='a' id='tabWheelset' tabindex="3">
			<input type='radio' name='a' id='tabCompressor' tabindex="4">
	
			<div class="css3-tab-nav">
					<label for='tabFrame'>Frame</label>
					<label for='tabGroupset'>GroupSet</label>
					<label for='tabWheelset'>WheelSet</label>
					<label for='tabCompressor'>Compressor</label>
			</div>
	
			<div class='css3-tab-content tab-one'>
					<!-- start slipsum code -->
					<table class="tabTable">
						<tr>
							<td class="showNo">No</td>
							<td class="showName">Name</td>
							<td class="showPrice">Price</td>
							<td class="showDate">Date</td>
							<td class="showbtn">수정/삭제</td>
						</tr>
						<c:forEach var="frame" items="${frame }">
							<tr>
								<td class="showNo">${frame.p_no }</td>
								<td class="showName">${frame.p_name }</td>
								<td class="showPrice">${frame.p_price }</td>
								<td class="showDate">${frame.p_regdate }</td>
								<td class="showbtn">
									<input type="button" value="수정">
									<input type="button" value="삭제">
								</td>
							</tr>
						</c:forEach>
					</table>
			</div>
	
			<div class='css3-tab-content tab-two'>
					<!-- start slipsum code -->
					<table class="tabTable">
						<tr>
							<td class="showNo">No</td>
							<td class="showName">Name</td>
							<td class="showPrice">Price</td>
							<td class="showDate">Date</td>
							<td class="showbtn">수정/삭제</td>
						</tr>
						<c:forEach var="groupset" items="${groupset }">
							<tr>
								<td class="showNo">${groupset.p_no }</td>
								<td class="showName">${groupset.p_name }</td>
								<td class="showPrice">${groupset.p_price }</td>
								<td class="showDate">${groupset.p_regdate }</td>
								<td class="showbtn">
									<input type="button" value="수정">
									<input type="button" value="삭제">
								</td>
							</tr>
						</c:forEach>
					</table>
			</div>
	
			<div class='css3-tab-content tab-three'>
					<!-- start slipsum code -->
					<table class="tabTable">
						<tr>
							<td class="showNo">No</td>
							<td class="showName">Name</td>
							<td class="showPrice">Price</td>
							<td class="showDate">Date</td>
							<td class="showbtn">수정/삭제</td>
						</tr>
						<c:forEach var="wheelset" items="${wheelset }">
							<tr>
								<td class="showNo">${wheelset.p_no }</td>
								<td class="showName">${wheelset.p_name }</td>
								<td class="showPrice">${wheelset.p_price }</td>
								<td class="showDate">${wheelset.p_regdate }</td>
								<td class="showbtn">
									<input type="button" value="수정">
									<input type="button" value="삭제">
								</td>
							</tr>
						</c:forEach>
					</table>
			</div>
			
			<div class='css3-tab-content add-new'>
					<!-- start slipsum code -->
					<table class="tabTable">
						<tr>
							<td class="showNo">No</td>
							<td class="showName">Name</td>
							<td class="showPrice">Price</td>
							<td class="showDate">Date</td>
							<td class="showbtn">수정/삭제</td>
						</tr>
						<c:forEach var="comp" items="${comp }">
							<tr>
								<td class="showNo">${comp.p_no }</td>
								<td class="showName">${comp.p_name }</td>
								<td class="showPrice">${comp.p_price }</td>
								<td class="showDate">${comp.p_regdate }</td>
								<td class="showbtn">
									<input type="button" value="수정">
									<input type="button" value="삭제">
								</td>
							</tr>
						</c:forEach>
					</table>
			</div>
	</div>
			
			<div id="title">
				Add Product
			</div>
			
			<form action="addproduct.do" method="post">
				<div id="content" align="left">
					<div id ="product">
						Product-Type : 
						<select name="combo">
							<option value="product_frame">프레임</option>
							<option value="product_groupset">그룹셋</option>
							<option value="product_wheelset">휠셋</option>
							<option value="product_comp">컴프레셔</option>
						</select>
						<p></p>
						
						Product-Name :
						<input type="text" size="25px" name="name">
						<p></p>
						
						Product-Price : 
						<input type="text" size="25px" name="price">
						<p></p>
						
						Create By : 
						<input type="text" size="25px" name="year">
						<p></p>
					</div>
					<div id="button">
						<input type="submit" value="보내기" class="btn">
						<input type="button" value="취소" class="btn">
					</div>
				</div>
			</form>
		</div>
	</center>
</body>
</html>