<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta content="text/html;charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta http-equiv ="Pragma" content = "no-cache"/>
	<meta http-equiv="Cache-Control" content="no cache" />
	<meta http-equiv="Expires" content="0" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<meta name="format-detection" content="telephone=no"/>
	<script src="https://cdn.bootcss.com/pace/1.0.2/pace.min.js"></script>
	<link href="https://cdn.bootcss.com/pace/1.0.2/themes/pink/pace-theme-flash.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../../plugins/layui/css/layui.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="../../css/fs.css" media="all"/>
	<script type="text/javascript" src="../../plugins/layui/layui.js"></script>
	<script type="text/javascript" src="../../plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../../plugins/frame/js/fs.js?v=1.5.0"></script>
	<script type="text/javascript" src="../../plugins/frame/js/frame.js?v=1.5.0"></script>

<style type="text/css">

#xiugai{

position: relative;
top:10px;
left:450px;

}

</style>
</head>
<body>
	<div class="layui-fluid">

	<form form class="layui-form" id="edit_form" isLoad="1" loadUrl="/Second/class/studentInfoShow">
	   <input type="hidden" name="type"/>
	  <div class="layui-form-item">
	    <label class="layui-form-label">班级名称</label>
	    <div class="layui-input-block">
	      <input type="text" name="cname" required=""  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input"/>
	    </div>
	  </div>
	
	 <div class="layui-form-item">
	    <label class="layui-form-label">带班老师</label>
	    <div class="layui-input-block">
	      <input type="text" name="tname" required=""  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">开班时间</label>
	    <div class="layui-input-inline">
	      <input type="text" name="ctime" autocomplete="off" class="layui-input fsDate" dateType="datetime" />
	    </div>
	</div>
	
	  <div class="layui-form-item">
	    <div class="layui-input-block">
         <button class="layui-btn" lay-submit="" lay-filter="save" url="http://localhost:8080/Second/class/addclass" inputs="cname:,tname:,ctime:">添加班级</button>
	      <button type="button" class="layui-btn layui-btn-primary" function="close">关闭</button>
	    </div>
	  </div>
	</form>

	</div>
	
</body>
</html>
