<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate/estimate.css">
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
	        window.parent.location.reload();
	    }
	    alert(msg);
	});
};

function cancel(){
	if(confirm("���� ����Ͻðڽ��ϱ�?")==true){
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
		<div id="purchaseContainer">
			<div id="itemsContainer">
				<div id="purchaseHeader">
					<font style="font-size: 20px; font-weight: bold;">���� ���</font>
				</div>
				<div id="items">
					<table id="itemsTable">
						<tr>
							<th width="20%" align="center">ǰ��</th>
							<th width="40%" align="center">�̸�</th>
							<th width="10%" align="center">����</th>
							<th width="30%" align="center">����</th>
						</tr>
					</table>
					<div id="scrollList">
						<table border="0" cellspacing="1" cellpadding="0" width="100%">
							<tr>
								<td width="20%" align="center">������</td>
								<td width="40%" align="center">���Ű ��Ʈ�� xl4</td>
								<td width="10%" align="center">1</td>
								<td width="30%" align="center">5,000,000</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="itemTotal">
					<div id="itemTotalLeft">
						<font style="font-weight: bold;">�� �ݾ�</font>
					</div>
					<div id="itemTotalRight">
						<font style="color: red; font-weight: bold;">6000000 ��</font>
					</div>
				</div>
			</div>
			<div id="customerContainer">
				<div id="purchaseHeader">
					<font style="font-size: 20px; font-weight: bold;">������ ����</font>
				</div>
				<div id="customerInfo">
					<div class="customerMenu">���̵�</div>
					<div class="customerMenuInfo" id="id">IU</div>
					<div class="customerMenu">�̸�</div>
					<div class="customerMenuInfo" id="name">��ġ��</div>
					<div class="customerMenu">�̸���</div>
					<div class="customerMenuInfo" id="email">asd@asd.com</div>
					<div class="customerMenu" >��ȭ��ȣ</div>
					<div class="customerMenuInfo" id="phone">010-3634-8433</div>
					<div class="customerMenu">�ּ�</div>
					<div class="customerMenuInfo" id="addr">��⵵ ������ ��⵿</div>
					<div class="customerMenu">���� ���</div>
					<div class="customerMenuInfo" id="pay">īī�� ����</div>
				</div>
				<input class="payBtn" type="button" value="�����ϱ�" onclick="purchase();">
				<input class="payBtn" type="button" value="����ϱ�" onclick="cancel();">
			</div>
		</div>
	</center>
</body>
</html>