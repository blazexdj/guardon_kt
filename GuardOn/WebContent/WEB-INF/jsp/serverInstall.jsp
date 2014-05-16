<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" /></head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 서버추가</div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="serverInstall.do">일반 서버 등록</a></li>
      <li><a href="dbInstall.do">DB 서버 등록</a></li>
      <li><a href="updateServerSelect.do">서버 정보 수정</a></li>
      <li><a href="dbList.do">서버 리스트</a></li>
      <!-- <li><a href="deleteServerSelect.do">서버 삭제</a></li> -->
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>

 <div class="content">
 <center>
 	<form action="insertServer.do" method="post">
<pre>
서 버 명	<input type="text" name="serverName" id="serverName" />
<br/>
<br/>
IP 주소 	<input type="text" name="ipAddress" id="ipAddress" />
<br/>
<br/>
포트 번호 	<input type="text" name="port" id="port" />
<br/>
<br/>
서버 설명 	<input type="text" name="serverDesc" id="serverDesc" />
<br/>
<br/>
서버 아이디 	<input type="text" name="serverId" id="serverId" />
<br/>
<br/>
서버 비밀번호 <input type="password" name="serverPwd" id="serverPwd" />
<br/>
</pre>

서버 통신타입 : 
<input type="radio" name="connectType" value="telnet" /> Telnet
<input type="radio" name="connectType" value="ssh" /> SSH
<input type="radio" name="connectType" value="ftp" /> FTP
<br/>
<br/>
<br/>
서버 운영체제 : 
<input type="radio" name="serverOS" value="windows" /> Windows
<input type="radio" name="serverOS" value="linux" /> Linux
<br/>
<br/>
<br/>
중복ID 사용 여부 : 
<input type="radio" name="connectIdDupl" value="true" /> 사용함
<input type="radio" name="connectIdDupl" value="false" /> 사용하지 않음
<br/>
<br/>
<br/>
<input type="submit" value="서버등록" />
<br/>
<br/>
</form>
</center>
</div>
  <div class="footer">
    <center>GuardOn V1.01</center>
  <br>
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
