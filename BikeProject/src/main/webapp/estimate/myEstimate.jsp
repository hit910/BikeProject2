<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">

	$(function(){
		$('#myFrame').click(function(){
			$.ajax({
				type:"POST",
				url:"frame.do",
				success:function(response){
				      $("#estimate_product").html(response);
				   }
			});
		});
		
		$('#myWheel').click(function(){
			$.ajax({
				type:"POST",
				url:"wheel.do",
				success:function(response){
				      $("#estimate_product").html(response);
				   }
			});
		});
		
 		$('#myGroup').click(function(){
			$.ajax({
				type:"POST",
				url:"group.do",
				success:function(response){
				      $("#estimate_product").html(response);
				   }
			});
		});
 		
 		$('#myComp').click(function(){
			$.ajax({
				type:"POST",
				url:"comp.do",
				success:function(response){
				      $("#estimate_product").html(response);
				   }
			});
		});	
 	 	
 		$('#result').click(function(){
 			$.ajax({
 				type: "POST",
 				url: "totalPrice.do",
 				data:$('#frm').serialize(),
 				success:function(data){
 					$('#result').html(data);
 				},
 				error:function(data){
 					$.jQueryAlert("����");
 				}
 			});
		});	
 		
	});
	
	 	function fSelect(){
 			$.ajax({
 				type: "POST",
 				url: "totalFramePrice.do",
 				data:$('#frm').serialize(),
 				success:function(data){
 					$('#fResult').html(data);
 				},
 				error:function(data){
 					$.jQueryAlert("����");
 				}
 			});
 	 	};
 	 	
 	 	function gSelect(){
 			$.ajax({
 				type: "POST",
 				url: "totalGroupPrice.do",
 				data:$('#frm').serialize(),
 				success:function(data){
 					$('#gResult').html(data);
 				},
 				error:function(data){
 					$.jQueryAlert("����");
 				}
 			});
 	 	};
 	 	
 	 	function wSelect(){
 			$.ajax({
 				type: "POST",
 				url: "totalWheelPrice.do",
 				data:$('#frm').serialize(),
 				success:function(data){
 					$('#wResult').html(data);
 				},
 				error:function(data){
 					$.jQueryAlert("����");
 				}
 			});
 	 	};
 	 	
 	 	function cSelect(){
 			$.ajax({
 				type: "POST",
 				url: "totalCompPrice.do",
 				data:$('#frm').serialize(),
 				success:function(data){
 					$('#cResult').html(data);
 				},
 				error:function(data){
 					$.jQueryAlert("����");
 				}
 			});
 	 	};
 	 	
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
 	 	
</script>
</head>
<body>
   <center>
   		<form id="frm">
               <div id="estimate_select">
                  <div id="estimate_select_list">
                     <div id="purchaseHeader">
                        <font style="font-size: 20px; font-weight: bold;">
                           �� ���� ���
                        </font>
                     </div>
                        <div id="items">
                           <table id="itemsTable">
                              <tr>
                                 <th width="20%" align="center">ǰ��</th>
                                 <th width="40%" align="center">�̸�</th>
                                 <th width="10%" align="center">����</th>
                                 <th width="20%" align="center">����</th>
                                 <th width="10%" align="center">���</th>
                              </tr>
                           </table>
                           <div id="scrollList">
                              <table border="0" cellspacing="1" cellpadding="0" width="100%">
                                 <tr>
                                    <td width="20%" align="center" id="myFrame">������</td>
                                    <td width="40%" align="center" id="myfName">���þ���</td>
                                    <td width="10%" align="center" >
                                    	<%-- <input id="myfCount" type="number" value="${count }" style="width:40px;"> --%>            	
                                    	<!-- <span id="myfCount">0</span> -->
                                    	<div class="selectBox">
											<select id="myfCount" class="dropdown" name="myfCount" onchange="fSelect();">
												<option selected="selected">1</option>
											<c:forEach var="i" begin="2" end="8">
												<option>${i}</option>
											</c:forEach>					
											</select>
										</div>
                                    	
                                    	<!-- <input type="button" value="����" id="inc">
                                    	<input type="button" value="����" id="dec"> -->
                                    </td>
                                    <td width="20%" align="center" >
                                    	
                                    	<%-- <input type="hidden" value="${count }" id="fcount" name="myfCount"> --%>
                                    	<input type="hidden" value="0" id="fprice" name="myfPrice">
                                    	
                                    	<span id="fResult">0</span>
                                    </td>
                                    <td width="10%" align="center" id="myfCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myGroup">������</td>
                                    <td width="40%" align="center" id="mygName">���þ���</td>
                                    <td width="10%" align="center">
                                    	<div class="selectBox">
											<select id="mygCount" class="dropdown" name="mygCount" onchange="gSelect();">
												<option selected="selected">1</option>
											<c:forEach var="i" begin="2" end="8">
												<option>${i}</option>
											</c:forEach>					
											</select>
										</div>
                                    </td>
                                    <td width="20%" align="center">
                                    	<input type="hidden" value="0" id="gprice" name="mygPrice">
                                    	<span id="gResult">0</span>
                                    </td>
                                    <td width="10%" align="center" id="mygCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myWheel">�ټ�</td>
                                    <td width="40%" align="center" id="mywName">���þ���</td>
                                    <td width="10%" align="center">
                                    	<div class="selectBox">
											<select id="mywCount" class="dropdown" name="mywCount" onchange="wSelect();">
												<option selected="selected">1</option>
											<c:forEach var="i" begin="2" end="8">
												<option>${i}</option>
											</c:forEach>					
											</select>
										</div>
                                    </td>
                                    <td width="20%" align="center">
                                    	<input type="hidden" value="0" id="wprice" name="mywPrice">
                                    	<span id="wResult">0</span>
                                    </td>
                                    <td width="10%" align="center" id="mywCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myComp">������Ʈ</td>
                                    <td width="40%" align="center" id="mycName">���þ���</td>
                                    <td width="10%" align="center">
                                    	<div class="selectBox">
											<select id="mycCount" class="dropdown" name="mycCount" onchange="cSelect();">
												<option selected="selected">1</option>
											<c:forEach var="i" begin="2" end="8">
												<option>${i}</option>
											</c:forEach>					
											</select>
										</div>
                                    </td>
                                    <td width="20%" align="center">
                                    	<input type="hidden" value="0" id="cprice" name="mycPrice">
                                    	<span id="cResult" >0</span>
                                    </td>
                                    <td width="10%" align="center" id="mycCancel"></td>
                                 </tr>
                   <!--               <tr></tr>
                                 <tr></tr>
                                 <tr></tr>
                                 <tr></tr>
                                 <tr>
                                 	<td colspan="2" width="20%" align="center">
                                 		<font style="font-weight: bold;">�� �ݾ�</font></td>
                                    <td colspan="3" width="40%" align="center">
                                    	<font id="totalPrice" style="font-weight: bold; color: red;">0</font></td>
                                 </tr> -->
                              </table>
									<span>����</span>	<span id="result">0</span>
                           </div>
                        </div>
                        <input class="payBtn" type="button" value="�����ϱ�" onclick="purchase();" style="margin: 10px;">
                     </div>
                  </div>
                </form>
   </center>
</body>
</html>