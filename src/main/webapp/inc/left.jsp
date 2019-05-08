<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="../css/public.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
<head></head>

<body id="bg">

	<div class="container">

		<div class="leftsidebar_box">
			<a href="../main.html" target="main"><div class="line">
					<img src="../img/coin01.png" />&nbsp;&nbsp;宿舍管理系统</div></a>
		<shiro:hasRole name="superAdmins,admins">
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../img/coin03.png" /><img class="icon2"
						src="../img/coin04.png" /> 资料管理<img class="icon3"
						src="../img/coin19.png" /><img class="icon4"
						src="../img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../img/coin111.png" /><img class="coin22"
						src="../img/coin222.png" /><a class="cks" href="../jsp/user.jsp"
						target="main">学生管理</a><img class="icon5" src="../img/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="../img/coin111.png" /><img class="coin22"
						src="../img/coin222.png" /><a class="cks" href="../jsp/user.jsp"
						target="main">班级管理</a><img class="icon5" src="../img/coin21.png" />
				</dd>
			</dl>
			</shiro:hasRole>
			<shiro:hasRole name="users">
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../img/coin05.png" /><img class="icon2"
						src="../img/coin06.png" />宿舍</dt>
				<dd>
					<img class="coin11" src="../img/coin111.png" /><img class="coin22"
						src="../img/coin222.png" /><a class="cks" href="../jsp/user.jsp"
						target="main">宿舍管理</a><img class="icon5" src="../img/coin21.png" />
				</dd>
			
			</dl>
            </shiro:hasRole>
		</div>

	</div>
</body>
</html>
