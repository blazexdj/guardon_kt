<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp=request.getContextPath(); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="<%=cp%>/js/jquery/1.10.4/jquery-ui.css" />
<script src="<%=cp%>/js/jquery/1.10.4/jquery.js"></script>
<script src="<%=cp%>/js/jquery/1.10.4/jquery-ui.js"></script>
<script language="javascript">
/*
	var intervalSecond = parseInt($('#intervalSecond').val());
	//var intervalSecond = document.userOtp.intervalSecond.value;
		function onLoadEvent() {
		var el = document.getElementById('btn1');
		el.disabled = '';
	}
	//window.onload = alert(intervalSecond); 
	//self.setTimeout(onLoadEvent, intervalSecond*1000);
*/
</script>	
	<script language="javascript">
	var check =0;
		function onLoadEvent() {	
			var el = document.getElementById('btn1');
			if (check==0) {
				//alert("aaaaaaa");
				check=check+1;
				setTimeout(onLoadEvent(), 5*1000);
			}else{
			el.disabled = '';
			}
		}
	
  		$(function() {
			var percent = 0;
			var intervalSecond = parseInt($('#intervalSecond').val());
			var el = document.getElementById('btn1');
			if(isNaN(intervalSecond)){
				intervalSecond = 10;
			}
					
			
			var interval = setInterval(function(){
				$( "#progressbar" ).progressbar({
	      			value: percent
	    		});
				percent = percent + 0.1;
				if(percent >= 100){
					clearInterval(interval);
					//onLoadEvent();
					onLoadEvent();
				}
			}, intervalSecond); // 0.01s
  		});
  	</script>


</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 외부 사용자 OTP 발급</div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="outUserOtpRequest.do">일회용 비밀번호 발급요청</a></li>
      <li><a href="outUserOtpPretreatment.do">일회용 비밀번호 발급</a></li>
      <li><a href="outPeriodPwdServerSelect.do">주기적 비밀번호 발급요청</a></li>
      <li><a href="outPeriodPwdList.do">주기적 비밀번호 발급현황</a></li>
      <li><a href="updateUser.do">개인정보 수정</a></li>
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
   <div class="content">  
    <br/>
    <br/>
    <br/>
    
    <center>
    <strong>
    
    <font size="+3">OTP :
    <% String userOtp = request.getParameter("userOtp"); %>
    ${userOtp}
    </font>
    </strong>
    <br/>
    <br/>
    <br/>
    <br/>
    <form action="userOtp.do" name="userOtp" method="post">
   		<input type="submit" id="btn1" value="재발급" style="height:50px; width:100px;" disabled="disabled"/>
   		<input id="intervalSecond" name="intervalSecond" type="hidden" value="${second}" />
    </form>
    </center>

 	
  <!-- end .content --></div>
    <br/>
    <br/>
    <br/>
    <div id="progressbar"></div>
      <br/>
		 <br/>        
   
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
 
</body>
</html>
