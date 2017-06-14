<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estimate.css">
<style type="text/css">
	#payResult{
		margin-top:25px;
		padding:0px;
		width: 950px;
		height: 500px;
		background-color: white;
		float: 
	}
	#resultInfo{
		margin: 0px;
		width: 450px;
		height: 400px;
		border: 1px solid;
	}
	#resultHeader{
		width:400px;
		height: 40px;
		margin-top: 15px;
	}
	#resultContent{
		width:400px;
		height:100px;
		margin-top: 60px;
		margin-bottom: 0px;
	}
	#resultTotal{
		width:83%;
    	height: 20%px;
    	padding: 15px;
    	background-color: #F6F6F6;
    	display: inline-block;
    	margin-top: 50px;
	}    
	#resultTotalLeft{
		width: 30%;
		height: 5%;
		padding: 15px;
		float: left;
	}
	#resultTotalRight{
		width: 40%;
		height: 5%;
		padding: 15px;
		float: right;
	}
</style>
</head>
<body>
	<center>
		<div id="#purchaseContainer">
			<div id="payResult">
				<div id="resultHeader">
					<font style="font-weight: bold; font-size: 20px;">결제 결과 확인</font>
				</div>
				<div id="resultInfo">
					<div id="resultTotal">
						<div id="resultTotalLeft">
							<font style="font-weight: bold;">총 결제 금액</font>
						</div>
						<div id="resultTotalRight">
							<font style="color: red; font-weight: bold;">${money }</font>
						</div>
					</div>
					<div id="resultContent">
						<font style="font-weight: bold; font-size: 20px;">
							정상적으로 구매되었습니다.<br/>
							대단히 감사합니다!<br/>
						</font>
					</div>
					<input class="resultBtn" type="button" value="확인" onclick="javascript:window.parent.location.reload();">
				</div>
			</div>
		</div>
	</center>
</body>
</html>