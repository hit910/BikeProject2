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
	var IMP = window.IMP; // ��������
	IMP.init('imp35767572'); // 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���

	IMP.request_pay({
	    pg : 'kakao', // version 1.1.0���� ����.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '�ֹ���:�����׽�Ʈ',
	    amount : 1001,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '�������̸�',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '����Ư���� ������ �Ｚ��',
	    buyer_postcode : '123-456',
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '������ �Ϸ�Ǿ����ϴ�.';
	        msg += '����ID : ' + rsp.imp_uid;
	        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
	        msg += '���� �ݾ� : ' + rsp.paid_amount;
	        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
	        location.href="testMain.jsp";
	    } else {
	        var msg = '������ �����Ͽ����ϴ�.';
	        msg += '�������� : ' + rsp.error_msg;
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
				<td>�̸�</td>
				<td><input type="text" name="buyer_name" size="5"></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><input type="text" name="buyer_email" size="10"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="buyer_tel"size="5"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="buyer_addr" size="10"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="�����ϱ�" onclick="purchase();">
					<input type="button" value="����ϱ�">
				</td>
			</tr>
		</table>
	</div>
	</form>
	</center>
</body>
</html>