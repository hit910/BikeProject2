<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	
#send{
      background-color: #00ABDF;
      width:100px;
      height:50px;
      border: none;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      font-weight: bold;
      -webkit-transition-duration: 0.4s;
      transition-duration: 0.4s;
      cursor: pointer;
   }
   
#send:HOVER{
      background-color: white;
      color: black;
      border: 2px solid #00ABDF;
}
</style>
</head>
<body>
<!-- 
	<section id="update">
	<center>
		<h1>ȸ�� ���� ����</h1>
			<form action="memberUpdate.do" method="post">
			<div>
				�̸� : <input type="text" name="name"><br>
				<br>
				��� : <input type="password" name="pwd"><br>
				<br>
				���� : <input type="text" name="email"><br>
				<br>
				�ּ� : <input type="text" name="addr"><br>
				<br>
				���� : <input type="text" name="phone"><br>
			</div>
				<input type="submit" value="�����Ϸ�">
				<input type="reset" value="����ϱ�">		
			</form>
	</center>
	</section>
	 -->
	 
	<section id="update">
	<div class="row" style="margin-top: 100px;">	 
		 <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <h2>My Page</h2>
	                    <!-- <hr class="star-primary"> -->
	                </div>
	            </div>
	            <div class="row" style="margin-top: 50px;">
	                <div class="col-lg-8 col-lg-offset-2">
	                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
	                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
	                    <form name="sentMessage" id="contactForm" novalidate="">
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="name">Name</label>
	                                <input type="text" class="form-control" placeholder="�̸�" id="name" required="" data-validation-required-message="Please enter your name." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>               
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="name">Password</label>
	                                <input type="password" class="form-control" placeholder="��й�ȣ" id="password" required="" data-validation-required-message="Please enter your password." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                         <div class="row control-group">
	                           <div class="form-group col-xs-12 floating-label-form-group controls">
	                               <label for="phone">Phone Number</label>
	                               <input type="tel" class="form-control" placeholder="��ȭ��ȣ" id="phone" required="" data-validation-required-message="Please enter your phone number." aria-invalid="false">
	                               <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="email">Email Address</label>
	                                <input type="email" class="form-control" placeholder="�̸���" id="email" required="" data-validation-required-message="Please enter your email address." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="phone">Addr</label>
	                                <input type=text class="form-control" placeholder="�ּ�" id="phone" required="" data-validation-required-message="Please enter your phone number." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        
	                       <!--  (�޼���) 
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="message">Message</label>
	                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required="" data-validation-required-message="Please enter a message." aria-invalid="false"></textarea>
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                         -->
           
	        
	                        <div id="success"></div>
	                        <div class="row">
	                            <div class="form-group col-xs-12">
	                                <!-- <button type="submit" class="btn btn-success btn-lg">Send</button> -->
	                            	<input id="send" type="submit" value="�Ϸ�">
	                            	<input id="send" type="button" value="���" onclick="javascript:history.back();">
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	      </div>
	   </section>
</body>
</html>