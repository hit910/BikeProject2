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
							<option value="product_frame">������</option>
							<option value="product_groupset">�׷��</option>
							<option value="product_wheelset">�ټ�</option>
							<option value="product_comp">��������</option>
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
						<input type="submit" value="������" class="btn">
						<input type="button" value="���" class="btn">
					</div>
				</div>
			</form>
		</div>
	</center>
</body>
</html>