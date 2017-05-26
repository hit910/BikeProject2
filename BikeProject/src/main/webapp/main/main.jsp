<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate/estimate.css">
<link rel="stylesheet" type="text/css" href="introduce/present.css">
<link rel="stylesheet" type="text/css" href="qnaboard/qnaboard.css">
<link rel="stylesheet" type="text/css" href="disign/shadow/css/shadowbox.css">
	<!-- Bootstrap Core CSS -->
    <link href="disign/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="disign/css/freelancer.min.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="disign/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="main/main.css">
    <link rel="stylesheet" type="text/css" href="main/custom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="disign/shadow/js/shadowbox.js"></script>
<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){
			if($(this).scrollTop() > 135){
				$("#header_div2").css({position:"fixed",top:"0px"});
			}else{
				$("#header_div2").css({position:"relative",top:"0px"});
			}
		});
	});
	
	Shadowbox.init({
		players:["iframe"]
	});
	
	$(function(){
		$('#login').click(function(){
			Shadowbox.open({
				content: 'member/login.jsp',
				player: 'iframe',
				title: 'Sign in',
				width: 300,
				height: 120
			});
		});
	});
	
	function logoutsend(){
		logout.submit();
	}
	
</script>
</head>
<body body id="page-top" class="index">
	<center>
		<div>
		<header>
<!-- 		<div id="header_div">
			<img id="header_logo" alt="logo" src="image/logo.png" >
		</div> -->
		<div id="container">
		<nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
		<div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#homeLink"><span class="glyphicon glyphicon-knight" aria-hidden="true"></span>&nbsp;JAVA - Bike estimate site</a>
        </div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="menu nav navbar-nav navbar-right">
				<!-- <li class="page-scroll"><a href="#homeLink">홈</a></li> -->
				<li class="page-scroll"><a href="#introduceLink">우리는..</a></li>
				<c:if test="${sessionScope.id==null }">
				<li class="page-scroll" id="estimate"><a href="#estimateLink">견적 내기
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></a>
					
					<div class="dropdown">
						<a href="#estimateLink">온라인 견적</a>
						<a href="#">견적 질문</a>
					</div>
				</li>
				</c:if>
				<c:if test="${sessionScope.id!=null }">
					<c:if test="${sessionScope.type == 'customer' }">
					<li class="page-scroll" id="estimate"><a href="#estimateLink">견적 내기
						<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></a>
						
						<div class="dropdown">
							<a href="#estimateLink">온라인 견적</a>
							<a href="#">견적 질문</a>
						</div>
					</li>
					</c:if>
					<c:if test="${sessionScope.type eq 'seller' }">
					<li class="page-scroll" id="estimate"><a href="#estimateLink">견적 내기
						<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></a>
						
						<div class="dropdown">
							<a href="#">상품 등록</a>
							<a href="#">견적 질문</a>
						</div>
					</li>
					</c:if>
				</c:if>
				
				<li class="page-scroll"><a href="#qnaboard">묻고 답하기</a></li>
				<li class="page-scroll"><a href="#">동호회</a></li>
				<li class="page-scroll"><a href="#">초보 공간</a></li>
				<c:if test="${sessionScope.id==null }">
					<li id="loginMenu"><a href="#">로그인<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></a>
						<div class="dropdown">
							<a href="#" id="login">로그인</a>
							<a href="#join">회원가입</a>
						</div>
					</li>
				</c:if>
				<c:if test="${sessionScope.id!=null }">
					<li id="myPage"><a href="#"> <c:out value="${sessionScope.type }"></c:out>
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></a>
						<div class="dropdown">
							<a href="#estimateLink">주문 정보 확인</a>
							<a href="#update">회원 정보 수정</a>
							<form name="logout" action="member/logout.do" method="post">
								<a href="#" onclick="javascript:logoutsend();">로그아웃</a>
							</form>
						</div>
					</li>
					</c:if>
			</ul>
		</div>
		</nav>
		</div>
		</header>
		</div>
		<jsp:include page="${home_jsp }"></jsp:include>
		<jsp:include page="${introduce }"></jsp:include>
		<jsp:include page="${estimate }"></jsp:include>
		<jsp:include page="${qnaboard }"></jsp:include>
		<c:if test="${sessionScope.id!=null }">
			<jsp:include page="${update }"></jsp:include>
		</c:if>
		<c:if test="${sessionScope.id==null }">
			<jsp:include page="${join }"></jsp:include>
		</c:if>
		<jsp:include page="${bottom_jsp }"></jsp:include>
	</center>
	
	<!-- jQuery -->
    <script src="disign/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="disign/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="disign/js/jqBootstrapValidation.js"></script>
    <script src="disign/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="disign/js/freelancer.min.js"></script>
</body>
</html>