<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">

function purchase(){
	var IMP = window.IMP; // 생략가능
	IMP.init('imp35767572'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

	IMP.request_pay({
	    pg : 'kakao', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : 1001,
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
	        location.href="testMain.jsp";
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        location.href="testMain.jsp";
	    }
	    alert(msg);
	});
};


</script>
</head>
<body>
	<center>
	<form action="puchase_ok.jsp" method="post">
	<div id="purchaseContainer">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="buyer_name" size="5"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="buyer_email" size="10"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="buyer_tel"size="5"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="buyer_addr" size="10"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="결제하기" onclick="purchase();">
					<input type="button" value="취소하기">
				</td>
			</tr>
		</table>
	</div>
	</form>
	</center>
</body>
</html>