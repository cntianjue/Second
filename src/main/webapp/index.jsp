<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="js/jquery.1.9.1.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>校园宿舍管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
  </head>
  
  <body  style="background: url(zhangyu.html)">
    <div id="header">
		<div class="header_title">
			<span class="title_con">校园宿舍管理系统</span>
		</div>
	</div>
	
	<div id="content">
		<center>
			<div class="con">
			<div class="con_title">
				<span class="con_title_sp">欢迎登录校园宿舍管理系统</span>
			</div>
			<div class="con_border_bottom"></div>
			<div class="con_panel">
				<form  method="post" action="user/login">
					<div class="con_input">
						<span>用户名：</span>
						<input type="text" id="userName" name="account" placeholder="请输入账号"/>
					</div>
					<div class="con_input">
						<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
						<input type="password" id="userPass" name="pwd" placeholder="密码"/>
					</div>
					<div class="con_select">
						<input type="radio" name="role" id="flag" value="users" />学生
						<input type="radio" name="role" id="flag" value="admins" />管理员
						<input type="radio" name="role" id="flag" value="superadmins" />超管
					</div>
					<input type="submit" value="登    录" class="submit-btn" style="cursor:hand;"  />
					<div>
						<s:fielderror fieldName="loginFlag" cssStyle="color:red" />
					</div>
				</form>
			</div>
		</div>
		</center>
	</div>

	<div id="footer">
 		 <!--    <center> <img src="img/1.jpg" />  -->
		</center>
	</div>
  </body>
</html>
