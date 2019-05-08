<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta content="text/html;charset=UTF-8"/>
	<title>校园宿舍管理系统</title>
	<meta name="keywords" content="fsLayuiPlugin,fsLayui,layui,layuiPlugin,layui插件,layui快速开发插件,fsLayui前端快速开发框架" />
    <meta name="description" content="fsLayui是一个基于layui的前端快速开发框架，支持数据表格增删改查操作，提供通用的组件，通过配置html实现数据请求，减少前端js重复开发的工作。目前支持单数据表格、多数据表格、tab数据表格、树+数据表格、联动数据表格、layeidt编辑器、下拉框联动等。" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta http-equiv ="Pragma" content = "no-cache"/>
	<meta http-equiv="Cache-Control" content="no cache" />
	<meta http-equiv="Expires" content="0" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no"/>
	<script src="https://cdn.bootcss.com/pace/1.0.2/pace.min.js"></script>
	<link href="https://cdn.bootcss.com/pace/1.0.2/themes/pink/pace-theme-flash.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./plugins/layui/css/layui.css" media="all"/>
	<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script type="text/javascript" src="./plugins/jquery/jquery.min.js"></script>
	<link href="./plugins/contextMenu/jquery.contextMenu.min.css" rel="stylesheet">
	<script src="./plugins/contextMenu/jquery.contextMenu.min.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/fs.css?v=1.8.4" media="all"/>
	<script type="text/javascript" src="./plugins/layui/layui.js"></script>
	<script type="text/javascript" src="./plugins/frame/js/fsDict.js?v=1.8.4"></script>
	<script type="text/javascript" src="./plugins/frame/js/fs.js?v=1.8.4"></script>
	<script type="text/javascript" src="./plugins/frame/js/main.js?v=1.8.4"></script> 
	<script type="text/javascript" src="./plugins/frame/js/frame.js?v=1.5.0"></script>
	<style type="text/css">
	
	#a{
	position: fixed;
	left:1400px;
	}
	#b{
	position: fixed;
	left:1300px;
	top:12px;
	}
	#c{
	width: 1200px; 
	height:800px;
	}
	</style>
</head>
<body>
<div class="layui-layout layui-layout-admin">

  <!-- 顶部 -->
  <div class="layui-header">
    <a href="./index.html" class="layui-hide-xs"><div class="layui-logo">宿舍管理系统</div></a>
    <a href="javascript:;" class="layui-hide-xs"><div class="fsSwitchMenu"><i class="fa fa-outdent"></i></div></a>

    <!-- 顶部菜单 -->
    <ul class="layui-nav layui-layout-left fsTopMenu" id="fsTopMenu" lay-filter="fsTopMenu">
    </ul>

    <ul class="layui-nav layui-layout-right">
  
    <div id="a">
     <li class="layui-nav-item layui-hide-xs">  欢迎您:<shiro:principal/>！</li>
          </div>
          <shiro:hasRole name="superadmins">
            <div class="layui-col-md3" id="b">
 <button class="layui-btn" function="top" topUrl="register.html" topWidth="650px" topHeight="420px" topTitle="注册" ">注册
    </div>
    </shiro:hasRole>
      <li class="layui-nav-item layui-hide-xs"><a href="/Second/index.jsp"></i> 退出</a></li>
    </ul>

  </div>

  <!-- 左边菜单 -->
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree fsLeftMenu"  lay-filter="fsLeftMenu" id="fsLeftMenu">
      </ul>
    </div>
  </div>

  <!-- 右边内容区域 -->
  <div class="layui-body layui-form">
  	<div class="layui-tab layui-tab-card fsTab" lay-filter="fsTab" lay-allowClose="true">

  		<!-- 菜单导航 -->
		<ul class="layui-tab-title" id="fsTabMenu">
			<li class="layui-this" lay-id="111"><i class="layui-icon">&#xe68e;</i><cite>首页</cite><p class="layui-tab-close" style="display: none;"></p></li>
		</ul>

		<!-- 内容 -->
		<div class="layui-tab-content" id="c">
			<div class="layui-tab-item layui-show" lay-id="1">
				<iframe src="views/home/index.html?v=1.7.1"></iframe>
			</div>
		</div>
	</div>
  </div>

  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ©2019 <a href="" target="_black">校园宿舍管理系统</a>  <button id="donate" class="layui-btn layui-btn-sm layui-btn-danger">捐赠作者</button>
  </div>
</div>

<!-- 移动导航 -->
<div class="site-tree-mobile layui-hide">
  <i class="layui-icon">&#xe602;</i>
</div>
<div class="site-mobile-shade"></div>

 <script>
$(document).ready(function(){
	c = setInterval(checkIsExist,30000);//每10秒执行一次checkIsExist方法
	});
	function checkIsExist(){
	$.ajax({
	type: "POST",
	url: "/Second/user/message",
	success: function(result){
	if(result== 'no'){
		
	}else{
	alert("尊敬的管理员，你有新的维修信息哦！");
	}
	}
	});
	}
	
</script> 

</body>
</html>
