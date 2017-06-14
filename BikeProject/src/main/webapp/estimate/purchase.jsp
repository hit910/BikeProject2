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
	var IMP = window.IMP; // ��������
	IMP.init('imp35767572'); // 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���

	IMP.request_pay({
	    pg : 'kakao', // version 1.1.0���� ����.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '�ֹ���:�����׽�Ʈ',
	    amount : money,
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
	        
	        /* location.href="testMain.jsp"; */
	        pfrm.submit();
	        
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
		<form id="pfrm" method="post" action="testMain.do">
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
							<font style="font-weight: bold;">�� �ݾ�</font>
						</div>
						<div id="itemTotalRight">
							<font style="color: red; font-weight: bold;">${total }</font>
						</div>
					</div>
				</div>
				<div id="customerContainer">
					<div id="purchaseHeader">
						<font style="font-size: 20px; font-weight: bold;">������ ����</font>
					</div>
					<div id="customerInfo">
						<div class="customerMenu">���̵�</div>
						<div class="customerMenuInfo" id="id">${vo.c_id }</div>
						<div class="customerMenu">�̸�</div>
						<div class="customerMenuInfo" id="name">${vo.c_name }</div>
						<div class="customerMenu">�̸���</div>
						<div class="customerMenuInfo" id="email">${vo.c_email }</div>
						<div class="customerMenu" >��ȭ��ȣ</div>
						<div class="customerMenuInfo" id="phone">${vo.c_phon }</div>
						<div class="customerMenu">�ּ�</div>
						<div class="customerMenuInfo" id="addr">${vo.c_addr }</div>
						<div class="customerMenu">���� ���</div>
						<div class="customerMenuInfo" id="pay">īī�� ����</div>
					</div>
					<input class="payBtn" type="button" value="�����ϱ�" onclick="purchase(${total });">
					<input class="payBtn" type="button" value="����ϱ�" onclick="cancel();">
				</div>
			</div>
		</form>
	</center>
</body>
</html>