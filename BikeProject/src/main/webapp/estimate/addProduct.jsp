<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate/addProduct.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	function del(name,no) {
			if(name == 'product_frame') {
				var vo = {"no":no};
		         $.ajax({
		            type: "POST",
		            url: "frameDelete.do",
		            data: vo
		         });
		     	 alert("삭제되었습니다.")
		         window.self.location.reload();
			/* location.href="frameDelete.do"; */
			
		}
		if(name == 'product_groupset') {
			var vo = {"no":no};
	         $.ajax({
	            type: "POST",
	            url: "groupsetDelete.do",
	            data: vo
	         });
		}
		if(name == 'product_wheelset') {
			var vo = {"no":no};
	         $.ajax({
	            type: "POST",
	            url: "wheelsetDelete.do",
	            data: vo
	         });
		}
		if(name == 'product_comp') {
			var vo = {"no":no};
	         $.ajax({
	            type: "POST",
	            url: "compDelete.do",
	            data: vo
	         });
		}
	}


	/* document.getElementById('foo').disabled = false; */
</script>
</head>
<body>
	<center>
		
		<c:set var="gName" value="product_groupset"/>
		<c:set var="wName" value="product_wheelset"/>
		<c:set var="cName" value="product_comp"/>
	
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
					<label for='tabCompressor'>Component</label>
			</div>
	
			<div class='css3-tab-content tab-one'>
					<!-- start slipsum code -->
					<form action="productDelete.do" method="post">
					<c:set var="fupdate" value="${fsize }"/>
					<c:set var="fdelete" value="${fsize }"/>
					<input type="hidden" id="fName" name="tname" value="product_frame">
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
								<td class="showNo">
									<input type="text"value="${frame.p_no }" size="20px">
								</td>
								<td class="showName">
									<input type="text" value="${frame.p_name }" size="20px">
								</td>
								<td class="showPrice">
									<input type="text" value="${frame.p_price }" size="10px">
								</td>
								<td class="showDate">
									<input type="text" value="${frame.p_regdate }" size="5px">
								</td>
								<td class="showbtn">
									<input type="hidden" name="no" value="${fdelete }">
									<input type="button" id="fupdate" value="수정">
									<input type="button" id="${fdelete }" value="삭제" onclick="del(fName.value,${frame.p_no });">
								</td>
							</tr>
							<c:set var="fupdate" value="${fupdate - 1 }"/>
							<c:set var="fdelete" value="${fdelete - 1 }"/>
						</c:forEach>
					</table>
					</form>
			</div>
	
			<div class='css3-tab-content tab-two'>
					<!-- start slipsum code -->
					<form action="productDelete.do" method="post">
					<c:set var="gupdate" value="${gsize }"/>
					<c:set var="gdelete" value="${gsize }"/>
					<input type="hidden" id="gName" name="tname" value="product_groupset">
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
								<td class="showNo">
									<input type="text" value="${groupset.p_no }" size="20px">
								</td>
								<td class="showName">
									<input type="text" value="${groupset.p_name }" size="20px">
								</td>
								<td class="showPrice">
									<input type="text" value="${groupset.p_price }" size="10px">
								</td>
								<td class="showDate">
									<input type="text" value="${groupset.p_regdate }" size="5px">
								</td>
								<td class="showbtn">
									<input type="hidden" name="no" value="${gdelete }">
									<input type="button" id="gupdate" value="수정">
									<input type="button" id="${gdelete }" value="삭제" onclick="del(gName.value,${groupset.p_no });">
								</td>
							</tr>
							<c:set var="gupdate" value="${gupdate - 1 }"/>
							<c:set var="gdelete" value="${gdelete - 1 }"/>
						</c:forEach>
					</table>
					</form>
			</div>
	
			<div class='css3-tab-content tab-three'>
					<!-- start slipsum code -->
					<form action="productDelete.do" method="post">
					<c:set var="wupdate" value="${wsize }"/>
					<c:set var="wdelete" value="${wsize }"/>
					<input type="hidden" id="wName" name="tname"  value="product_wheelset">
					
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
								<td class="showNo">
									<input type="text" value="${wheelset.p_no }" size="20px">
								</td>
								<td class="showName">
									<input type="text" value="${wheelset.p_name }" size="20px">
								</td>
								<td class="showPrice">
									<input type="text" value="${wheelset.p_price }" size="10px">
								</td>
								<td class="showDate">
									<input type="text" value="${wheelset.p_regdate }" size="5px">
								</td>
								<td class="showbtn">
									<input type="hidden" name="no" value="${wdelete }">
									<input type="button" id="wupdate" value="수정">
									<input type="button" id="${wdelete }" value="삭제" onclick="del(wName.value,${wheelset.p_no });" >
								</td>
							</tr>
							<c:set var="wupdate" value="${wupdate - 1 }"/>
							<c:set var="wdelete" value="${wdelete - 1 }"/>
						</c:forEach>
					</table>
					</form>
			</div>
			
			<div class='css3-tab-content add-new'>
					<!-- start slipsum code -->
					<form action="productDelete.do" method="post">
					<c:set var="cupdate" value="${csize }"/>
					<c:set var="cdelete" value="${csize }"/>
					<input type="hidden" id="cName" name="tname"  value="product_comp">
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
								<td class="showNo">
									<input type="text" value="${comp.p_no }" size="20px">
								</td>
								<td class="showName">
									<input type="text" value="${comp.p_name }" size="20px">
								</td>
								<td class="showPrice">
									<input type="text" value="${comp.p_price }" size="10px">
								</td>
								<td class="showDate">
									<input type="text" value="${comp.p_regdate }" size="5px">
								</td>
								<td class="showbtn">
									<input type="hidden" name="no" value="${cdelete }">
									<input type="button" id="cupdate" value="수정">
									<input type="button" id="${cdelete }" value="삭제"  onclick="del(cName.value,${comp.p_no });" >
								</td>
							</tr>
							<c:set var="cupdate" value="${cupdate - 1 }"/>
							<c:set var="cdelete" value="${cdelete - 1 }"/>
						</c:forEach>
					</table>
					</form>
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
							<option value="product_frame">Frame</option>
							<option value="product_groupset">GroupSet</option>
							<option value="product_wheelset">WheelSet</option>
							<option value="product_comp">Compressor</option>
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