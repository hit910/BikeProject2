<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

	#myOrderContainer{
		margin:0px;
		padding:0px;
		width: 1000;
		height: 550;
	}
	
	#myOrderResult{
		margin-top:25px;
		padding:0px;
		width: 950px;
		height: 500px;
		background-color: white;
		float: 
	}
	
	 #itemsTable th{
    	font-size: 15px;
    	text-align: center;
    }
    #itemsTable{
    	border:0;
    	cellspacing:1px;
    	cellpadding:0;
    	width:100%; 
    	border-collapse: collapse;
    }
    
    #itemsTable th{
    	border-bottom: 1px solid #BDBDBD;
    }
    
    #itemsTable tr{
    	height: 34px;
    }
    #items td{
    	border-bottom: 1px dotted #BDBDBD;
    }
    #items tr{
    	height: 34px;
    }
    
    #scrollList{
    	overflow:auto;
    	overflow-x:hidden;
    	background-color: white;
    }
	#itemTotal{
		width:83%;
    	height: 20%px;
    	padding: 15px;
    	background-color: #F6F6F6;
    	display: inline-block;
	}    
	#itemTotalLeft{
		width: 30%;
		height: 5%;
		padding: 10px;
		float: left;
	}
	#itemTotalRight{
		width: 40%;
		height: 5%;
		padding: 10px;
		float: right;
	}
	
	#myOrder{
		margin:0px;
		padding:0px;
		width:850px;
		height: 390px;
		background-color: #F6F6F6;
		border: 1px solid #BDBDBD;
   		text-align: center;
	}
</style>
</head>
<body>
	<center>
			<div id="myOrderContainer">
				<div id="myOrderResult">
					<div id="myOrderHeader">
						<font style="font-size: 20px; font-weight: bold;">�ֹ� Ȯ��</font>
					</div>
					<div id="myOrder">
						<table id="itemsTable">
							<tr>
								<th width="15%" align="center">�ֹ���ȣ</th>
								<th width="15%" align="center">�ֹ�����</th>
								<th width="30%" align="center">�ֹ���ǰ����</th>
								<th width="20%" align="center">����</th>
								<th width="20%" align="center">�ֹ�����</th>
							</tr>
						</table>
						<div id="scrollList">
							<table border="0" cellspacing="1" cellpadding="0" width="100%">
							<c:forEach var="ordervo" items="${list }">
								<tr>
									<td width="15%" align="center">${vo.o_no }</td>
									<td width="15%" align="center">${vo.o_date }</td>
									<td width="30%" align="center">${vo.p_frame }...</td>
									<td width="20%" align="center">${vo.o_price }</td>
									<td width="20%" align="center">��� �غ���</td>
								</tr>
							</c:forEach>
							</table>
						</div>
					</div>
					<div id="itemTotal">
						<div id="itemTotalLeft">
							<font style="font-weight: bold;">�� �ݾ�</font>
						</div>
						<div id="itemTotalRight">
							<font style="color: red; font-weight: bold;">6000000 ��</font>
						</div>
					</div>
				</div>
			</div>
	</center>
</body>
</html>