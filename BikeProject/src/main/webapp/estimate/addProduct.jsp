<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="addProduct.css">
</head>
<body>
	<center>
		<div id="root">
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