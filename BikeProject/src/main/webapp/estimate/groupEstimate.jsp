<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

$(function(){
	$('.groupTr').click(function(){
		var no = $(this).attr('value');
		//var type = $('#type').text();
		var name = $('#gn'+no).text();
		var count = parseInt(1);
		var price = parseInt($('#gp'+no).text());
		
		//$('#myType').text(type);
		$('#mygName').text(name);
		$('#mygCount').attr('selected',0);
		$('#gResult').text(price);
		$('#gcount').val(count);
		$('#gprice').val(price);
		$('#mygCancel').text('X');
	});
	
	$('#mygCancel').click(function(){
		//$('#myType').text("");
		$('#mygName').text("선택안함");
		$('#mygCount').attr('selected',0);
		$('#gResult').text(0);
		$('#mygCancel').text("");
	});
});
</script>
<link rel="stylesheet" type="text/css" href="../estimate/estimate.css">
</head>
<body>
   <center>
                  <div id="estimate_product">
                     <div id="estimate_prodect_list">
                        <div id="purchaseHeader">
                           <font style="font-size: 20px; font-weight: bold;">
                              구동계
                           </font>
                        </div>
                        <div id="items">
                           <table id="itemsTable">
                  <tr>
                  	 <th width="30%" align="center">종류</th>
                     <th width="40%" align="center">이름</th>
                     <th width="30%" align="center">가격</th>
                      <!-- <th width="10%" align="center">수량</th> -->
                  </tr>
               </table>
               <div id="scrollList">
                  <table id="estimate_prodect_content" border="0" cellspacing="1" cellpadding="0" width="100%">
                        <c:forEach var="vo" items="${gList }">   
                                 <tr class="groupTr" value="${vo.p_no }">
                                 	<td width="30%" align="center">구동계</td>
                                    <td width="40%" align="center" id="gn${vo.p_no }">${vo.p_name}</td>
                                    <td width="30%" align="center" id="gp${vo.p_no }">${vo.p_price}</td>
                                 	<%-- <td width="10%" align="center"><input id="gc${vo.p_no }" type="text" value="1" size="1"></td> --%>
                                 </tr>
                              </c:forEach>
                  </table>
                           </div>
                        </div>
                     </div>
                  </div>
   </center>
</body>
</html>