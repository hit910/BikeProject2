<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">

function purchase(money){
	var IMP = window.IMP; // 생략가능
	IMP.init('imp35767572'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

	IMP.request_pay({
	    pg : 'kakao', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : money,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456',
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        
	        /* location.href="testMain.jsp"; */
	        pfrm.submit();
	        
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        window.parent.location.reload();
	    }
	    alert(msg);
	});
};

function cancel(){
	if(confirm("정말 취소하시겠습니까?")==true){
		window.parent.location.reload();
		/* location.href="testMain.jsp"; */
	}else{
		return;
	}
};



</script>
</head>
<body>
	<center>
		<form id="pfrm" method="post" action="testMain.do">
			<div id="purchaseContainer">
				<div id="itemsContainer">
					<div id="purchaseHeader">
						<font style="font-size: 20px; font-weight: bold;">구매 목록</font>
					</div>
					<div id="items">
						<table id="itemsTable">
							<tr>
								<th width="20%" align="center">품목</th>
								<th width="40%" align="center">이름</th>
								<th width="10%" align="center">수량</th>
								<th width="30%" align="center">가격</th>
							</tr>
						</table>
						<div id="scrollList">
							<input type="hidden" name="pfname" value="${fName }">
							<input type="hidden" name="pgname" value="${gName }">
							<input type="hidden" name="pwname" value="${wName }">
							<input type="hidden" name="pcname" value="${cName }">
							<input type="hidden" name="pmoney" value="${total }">
							<input type="hidden" name="pid" value="${sessionScope.id }">
							<input type="hidden" name="pfType" value="${fType }">
							<input type="hidden" name="pgType" value="${gType }">
							<input type="hidden" name="pwType" value="${wType }">
							<input type="hidden" name="pcType" value="${cType }">
							
							<table border="0" cellspacing="1" cellpadding="0" width="100%">
								<tr>
									<td width="20%" align="center">${fType }</td>
									<td width="40%" align="center">${fName }</td>
									<td width="10%" align="center">${fCount }</td>
									<td width="30%" align="center">${fResult }</td>
								</tr>
								<tr>
									<td width="20%" align="center">${gType }</td>
									<td width="40%" align="center">${gName }</td>
									<td width="10%" align="center">${gCount }</td>
									<td width="30%" align="center">${gResult }</td>
								</tr>
								<tr>
									<td width="20%" align="center">${wType }</td>
									<td width="40%" align="center">${wName }</td>
									<td width="10%" align="center">${wCount }</td>
									<td width="30%" align="center">${wResult }</td>
								</tr>
								<tr>
									<td width="20%" align="center">${cType }</td>
									<td width="40%" align="center">${cName }</td>
									<td width="10%" align="center">${cCount }</td>
									<td width="30%" align="center">${cResult }</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="itemTotal">
						<div id="itemTotalLeft">
							<font style="font-weight: bold;">총 금액</font>
						</div>
						<div id="itemTotalRight">
							<font style="color: red; font-weight: bold;">${total }</font>
						</div>
					</div>
				</div>
				<div id="customerContainer">
					<div id="purchaseHeader">
						<font style="font-size: 20px; font-weight: bold;">구매자 정보</font>
					</div>
					<div id="customerInfo">
						<div class="customerMenu">아이디</div>
						<div class="customerMenuInfo" id="id">${vo.c_id }</div>
						<div class="customerMenu">이름</div>
						<div class="customerMenuInfo" id="name">${vo.c_name }</div>
						<div class="customerMenu">이메일</div>
						<div class="customerMenuInfo" id="email">${vo.c_email }</div>
						<div class="customerMenu" >전화번호</div>
						<div class="customerMenuInfo" id="phone">${vo.c_phon }</div>
						<div class="customerMenu">주소</div>
						<div class="customerMenuInfo" id="addr">${vo.c_addr }</div>
						<div class="customerMenu">결제 방식</div>
						<div class="customerMenuInfo" id="pay">카카오 페이</div>
					</div>
					<input class="payBtn" type="button" value="결제하기" onclick="purchase(${total });">
					<input class="payBtn" type="button" value="취소하기" onclick="cancel();">
				</div>
			</div>
		</form>
	</center>
</body>
</html>