<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<c:choose>
   <c:when test="${res=='id' }">
      <script>
         alert('���̵� �������� �ʽ��ϴ�');
         history.back();
      </script>
   </c:when>
   
   <c:when test="${res=='pwd' }">
   	  <script>
	      alert('�н����尡 Ʋ���ϴ�.')
	      history.back();
      </script>	
   </c:when>
   
   <c:otherwise>
   		<script>
   			window.parent.location.reload();
   		</script>
   	</c:otherwise>
</c:choose>