<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <center>
		<div id="estimate_home">
		   <div class="row" style="margin-bottom: 5px;">
		          <div class="col-lg-12 text-center">
		              <h2>Online estimate sheet</h2>
		              <!-- <hr class="star-primary"> -->
		          </div>
			</div>
			<div id="estimate_Container">
				<jsp:include page="${proEstimate }"></jsp:include>
				<jsp:include page="${myEstimate }"></jsp:include>
			</div>
		</div>
   </center>
</body>
</html>