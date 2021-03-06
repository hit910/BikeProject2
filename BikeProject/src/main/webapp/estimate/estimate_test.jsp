<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../estimate/estimate.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="disign/shadow/js/shadowbox.js"></script>
<script type="text/javascript">
   Shadowbox.init({
      players:["iframe"]
   });
   
   $(function(){
      $('#payment').click(function(){
         Shadowbox.open({
            content: 'purchase.do',
            player: 'iframe',
            title: 'Payment',
            width: 1000,
            height: 550
         });
      });   
/*       $.ajax({
         type:"POST",
         url:"estimate/estimate.do",
         success:function(response){
            $('#estimate_prodect_content').html(response);
         }
      }); */
   });

</script>
</head>
<body>
   <center>
      <c:if test="${sessionScope.id==null }">
         <div>
            로그인 해봐
         </div>
      </c:if>
      <c:if test="${sessionScope.id!=null }">
         <%-- <c:if test="${sessionScope.type eq 'customer' }"> --%>
            <div id="estimate_home">
               <div class="row" style="margin-bottom: 5px;">
                      <div class="col-lg-12 text-center">
                          <h2>Online estimate sheet</h2>
                          <!-- <hr class="star-primary"> -->
                      </div>
               </div>
               <div id="estimate_Container">
                  <div id="estimate_product">
                     <div id="estimate_prodect_list">
                        <div id="purchaseHeader">
                           <font style="font-size: 20px; font-weight: bold;">
                              프레임
                           </font>
                        </div>
                        <div id="items">
                           <table id="itemsTable">
                  <tr>
                  	 <th width="30%" align="center">종류</th>
                     <th width="40%" align="center">이름</th>
                     <th width="30%" align="center">가격</th>
                  </tr>
               </table>
               <div id="scrollList">
                  <table id="estimate_prodect_content" border="0" cellspacing="1" cellpadding="0" width="100%">
                        <c:forEach var="vo" items="${fList }">   
                                 <tr>
                                 	<td width="30%" align="center">프레임</td>
                                    <td width="40%" align="center">${vo.p_name}</td>
                                    <td width="30%" align="center">${vo.p_price}</td>
                                 </tr>
                              </c:forEach>
                  </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div id="estimate_select">
                  <div id="estimate_select_list">
                     <div id="purchaseHeader">
                        <font style="font-size: 20px; font-weight: bold;">
                           내 선택 목록
                        </font>
                     </div>
                        <div id="items">
                           <table id="itemsTable">
                              <tr>
                                 <th width="20%" align="center">품목</th>
                                 <th width="40%" align="center">이름</th>
                                 <th width="10%" align="center">수량</th>
                                 <th width="20%" align="center">가격</th>
                                 <th width="10%" align="center">비고</th>
                              </tr>
                           </table>
                           <div id="scrollList">
                              <table border="0" cellspacing="1" cellpadding="0" width="100%">
                                 <tr>
                                    <td width="20%" align="center">프레임</td>
                                    <td width="40%" align="center">비앙키 올트레 xl4</td>
                                    <td width="10%" align="center">1</td>
                                    <td width="20%" align="center">5,000,000</td>
                                    <td width="10%" align="center">X</td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center">구동계</td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center">휠셋</td>
                                 </tr>
                                 <tr>
                                    <td width="20%" align="center">컴포넌트</td>
                                 </tr>
                              </table>
                           </div>
                        </div>
                        <input type="button" value="결제하기" id="payment">
                     </div>
                  </div>
            </div>
         <%-- </c:if>
         <c:if test="${sessionScope.type eq 'seller' }">
            <div>
               seller page
            </div>
         </c:if> --%>
      </c:if>
   </center>
</body>
</html>