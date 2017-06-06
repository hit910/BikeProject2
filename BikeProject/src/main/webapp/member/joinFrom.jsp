<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
	<center>
	<section id="join">
		<div class="row">
			<div>
			<h2>회원가입하기</h2>
				<form action="join.do" method="post">
					<div class="row control-group">
					::before
					아이디 : <input type="text" name="id"><br>
				
				비번 : <input type="password" name="pwd"><br>
				
				메일 : <input type="text" name="mail"><br>
				
				주소 : <input type="text" name="addr"><br>
				
				<input type="submit" value="회원가입">
				<input type="reset" value="다시쓰기">

				</form>
		
			</div>
		</div>
	</section>
	</center>
	 -->
<section id="joinLink">
	<div class="row" style="margin-top: 100px;">	 
		 <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <h2>Contact us</h2>
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
	                                <input type="text" class="form-control" placeholder="이름" id="name" required="" name="name" data-validation-required-message="Please enter your name." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="name">Id</label>
	                                <input type="text" class="form-control" placeholder="아이디" id="id" required="" name="id" data-validation-required-message="Please enter your name." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>       
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="name">Password</label>
	                                <input type="password" class="form-control" placeholder="비밀번호" id="pwd" name="pwd" required="" data-validation-required-message="Please enter your password." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                         <div class="row control-group">
	                           <div class="form-group col-xs-12 floating-label-form-group controls">
	                               <label for="phone">Phone Number</label>
	                               <input type="tel" class="form-control" placeholder="전화번호" id="phone" name="phone" required="" data-validation-required-message="Please enter your phone number." aria-invalid="false">
	                               <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="email">Email Address</label>
	                                <input type="email" class="form-control" placeholder="이메일" id="email" name="email" required="" data-validation-required-message="Please enter your email address." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="phone">Addr</label>
	                                <input type=text class="form-control" placeholder="주소" id="addr" name="addr" required="" data-validation-required-message="Please enter your phone number." aria-invalid="false">
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                        
	                       <!--  메세지 
	                        <div class="row control-group">
	                            <div class="form-group col-xs-12 floating-label-form-group controls">
	                                <label for="message">Message</label>
	                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required="" data-validation-required-message="Please enter a message." aria-invalid="false"></textarea>
	                                <p class="help-block text-danger"></p>
	                            </div>
	                        </div>
	                         -->
            
	                        <br>
	        
	                        <div id="success"></div>
	                        <div class="row">
	                            <div class="form-group col-xs-12">
	                                <!-- <button type="submit" class="btn btn-success btn-lg">Send</button> -->
	                            	<input id="send" type="submit" value="보내기">
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




