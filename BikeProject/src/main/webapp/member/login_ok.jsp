<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<c:choose>
   <c:when test="${res=='id' }">
      <script>
         alert('아이디가 존재하지 않습니다');
         history.back();
      </script>
   </c:when>
   
   <c:when test="${res=='pwd' }">
   	  <script>
	      alert('패스워드가 틀립니다.')
	      history.back();
      </script>	
   </c:when>
   
   <c:otherwise>
   		<script>
   			window.parent.location.reload();
   		</script>
   	</c:otherwise>
</c:choose>