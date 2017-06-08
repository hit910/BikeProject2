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
		
	});
</script>
</head>
<body>
   <center>
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
                                    <td width="10%" align="center" id="myfCount">0</td>
                                    <td width="20%" align="center" id="myfPrice">0</td>
                                    <td width="10%" align="center" id="myfCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myGroup">������</td>
                                    <td width="40%" align="center" id="mygName">���þ���</td>
                                    <td width="10%" align="center" id="mygCount">0</td>
                                    <td width="20%" align="center" id="mygPrice">0</td>
                                    <td width="10%" align="center" id="mygCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myWheel">�ټ�</td>
                                    <td width="40%" align="center" id="mywName">���þ���</td>
                                    <td width="10%" align="center" id="mywCount">0</td>
                                    <td width="20%" align="center" id="mywPrice">0</td>
                                    <td width="10%" align="center" id="mywCancel"></td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center" id="myComp">������Ʈ</td>
                                    <td width="40%" align="center" id="mycName">���þ���</td>
                                    <td width="10%" align="center" id="mycCount">0</td>
                                    <td width="20%" align="center" id="mycPrice">0</td>
                                    <td width="10%" align="center" id="mycCancel"></td>
                                 </tr>
                              </table>
                           </div>
                        </div>
                        <input type="button" value="�����ϱ�" id="payBtn">
                     </div>
                  </div>
   </center>
</body>
</html>