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
	function up(no,type) {
		document.getElementById(no+type+'u').type="hidden";
		document.getElementById(no+type+'s').type="button";
		document.getElementById(no+type+'name').disabled=false;
		document.getElementById(no+type+'price').disabled=false;
		document.getElementById(no+type+'date').disabled=false;
	}

	function save(tname,no,type) {
		var name = document.getElementById(no+type+'name');
		var price = document.getElementById(no+type+'price');
		var year = document.getElementById(no+type+'date');
		 $.ajax({
            type: "POST",
            url: "productUpdate.do",
            data: {"tname":tname,"no":no,"name":name.value,"price":price.value,"year":year.value}
         });
		 alert("수정되었습니다.")
         window.self.location.reload();
	}

	function del(tname,no) {
		$.ajax({
            type: "POST",
            url: "productDelete.do",
            data: {"tname":tname,"no":no}
         });
		alert("삭제되었습니다.")
        window.self.location.reload();
		
	}

</script>
</head>
<body>
	<center>
		<form id="frm">
		
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
										<input type="text" value="${frame.p_no }" size="5px" disabled id="${frame.p_no }fno">
									</td>
									<td class="showName">
										<input type="text" value="${frame.p_name }" size="20px" disabled id="${frame.p_no }fname">
									</td>
									<td class="showPrice">
										<input type="text" value="${frame.p_price }" size="10px" disabled id="${frame.p_no }fprice">
									</td>
									<td class="showDate">
										<input type="text" value="${frame.p_regdate }" size="5px" disabled id="${frame.p_no }fdate">
									</td>
									<td class="showbtn">
										<input type="button" id="${frame.p_no  }fu" value="수정" onclick="up(${frame.p_no },'f');">
										<input type="hidden" id="${frame.p_no  }fs" value="저장" onclick="save(fName.value,${frame.p_no },'f');">
										<input type="button" id="${frame.p_no  }" value="삭제" onclick="del(fName.value,${frame.p_no });">
									</td>
								</tr>
							</c:forEach>
						</table>
						</form>
				</div>
		
				<div class='css3-tab-content tab-two'>
						<!-- start slipsum code -->
						<form action="productDelete.do" method="post">
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
										<input type="text" value="${groupset.p_no }" size="5px"  disabled id="${groupset.p_no }gno">
									</td>
									<td class="showName">
										<input type="text" value="${groupset.p_name }" size="20px" disabled id="${groupset.p_no }gname">
									</td>
									<td class="showPrice">
										<input type="text" value="${groupset.p_price }" size="10px" disabled id="${groupset.p_no }gprice">
									</td>
									<td class="showDate">
										<input type="text" value="${groupset.p_regdate }" size="5px" disabled id="${groupset.p_no }gdate">
									</td>
									<td class="showbtn">
										<input type="button" id="${groupset.p_no  }gu" value="수정"  onclick="up(${groupset.p_no },'g');">
										<input type="hidden" id="${groupset.p_no  }gs" value="저장" onclick="save(gName.value,${groupset.p_no },'g');">
										<input type="button" id="${groupset.p_no  }" value="삭제" onclick="del(gName.value,${groupset.p_no });">
									</td>
								</tr>
							</c:forEach>
						</table>
						</form>
				</div>
		
				<div class='css3-tab-content tab-three'>
						<!-- start slipsum code -->
						<form action="productDelete.do" method="post">
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
										<input type="text" value="${wheelset.p_no }" size="5px" disabled id="${wheelset.p_no }wno">
									</td>
									<td class="showName">
										<input type="text" value="${wheelset.p_name }" size="20px" disabled id="${wheelset.p_no }wname">
									</td>
									<td class="showPrice">
										<input type="text" value="${wheelset.p_price }" size="10px" disabled id="${wheelset.p_no }wprice">
									</td>
									<td class="showDate">
										<input type="text" value="${wheelset.p_regdate }" size="5px" disabled id="${wheelset.p_no }wdate">
									</td>
									<td class="showbtn">
										<input type="button" id="${wheelset.p_no  }wu" value="수정"  onclick="up(${wheelset.p_no },'w');">
										<input type="hidden" id="${wheelset.p_no  }ws" value="저장" onclick="save(wName.value,${wheelset.p_no },'w');">
										<input type="button" id="${wheelset.p_no  }" value="삭제" onclick="del(wName.value,${wheelset.p_no });" >
									</td>
								</tr>
							</c:forEach>
						</table>
						</form>
				</div>
				
				<div class='css3-tab-content add-new'>
						<!-- start slipsum code -->
						<form action="productDelete.do" method="post">
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
										<input type="text" value="${comp.p_no }" size="5px" disabled id="${comp.p_no }cno">
									</td>
									<td class="showName">
										<input type="text" value="${comp.p_name }" size="20px" disabled id="${comp.p_no }cname">
									</td>
									<td class="showPrice">
										<input type="text" value="${comp.p_price }" size="10px" disabled id="${comp.p_no }cprice">
									</td>
									<td class="showDate">
										<input type="text" value="${comp.p_regdate }" size="5px" disabled id="${comp.p_no }cdate">
									</td>
									<td class="showbtn">
										<input type="button" id="${comp.p_no  }cu" value="수정"  onclick="up(${comp.p_no },'c');">
										<input type="hidden" id="${comp.p_no  }cs" value="저장" onclick="save(cName.value,${comp.p_no },'c');">
										<input type="button" id="${comp.p_no  }" value="삭제"  onclick="del(cName.value,${comp.p_no });" >
									</td>
								</tr>
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
		</form>
	</center>
</body>
</html>