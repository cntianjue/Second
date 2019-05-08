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

	<form form class="layui-form" id="edit_form" isLoad="1" loadUrl="/Second/student/studentInfoShow?${param.iphone}">
	   <input type="hidden" name="type"/>
	  <div class="layui-form-item">
	    <label class="layui-form-label">姓名</label>
	    <div class="layui-input-block">
	      <input type="text" name="sname" required=""  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input"/>
	    </div>
	  </div>
	
	  <div class="layui-form-item">
	    <label class="layui-form-label">性别</label>
	    <div class="layui-input-inline">
	      <input type="radio" name="sex" value="男" title="男" checked="checked">
	      <input type="radio" name="sex" value="女" title="女">
	    </div>
	  <label class="layui-form-label">班级</label>
	    <div class="layui-input-inline">
	      <select name="cname" lay-verify="required">
	        <option value=""></option>
	        <option value="一年级一班">一年级一班</option>
	        <option value="一年级二班">一年级二班</option>
	        <option value="二年级一班">二年级一班</option>
	        <option value="二年级二班">二年级二班</option>
	      </select>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">原房间</label>
	    <div class="layui-input-inline">
	      <select name="saddress" lay-verify="required">
	        <option value=""></option>
	        <option value="成都市锦江区芙蓉西路530号">成都市锦江区芙蓉西路530号</option>
	        <option value="四川省成都市武侯区燃灯寺街">四川省成都市武侯区燃灯寺街</option>
	        <option value="黄土镇汉源路40号">黄土镇汉源路40号</option>
	        <option value="成都市锦江区东大街下东大街段">成都市锦江区东大街下东大街段</option>
	        <option value="四川省成都市武侯区芳草东街">四川省成都市武侯区芳草东街</option>
	      </select>
	    </div>
	   
	  </div>
	   <div class="layui-form-item">
	    <label class="layui-form-label">新房间</label>
	    <div class="layui-input-inline">
	      <select name="address" lay-verify="required">
	        <option value=""></option>
	        <option value="成都市锦江区芙蓉西路530号">成都市锦江区芙蓉西路530号</option>
	        <option value="四川省成都市武侯区燃灯寺街">四川省成都市武侯区燃灯寺街</option>
	        <option value="黄土镇汉源路40号">黄土镇汉源路40号</option>
	        <option value="成都市锦江区东大街下东大街段">成都市锦江区东大街下东大街段</option>
	        <option value="四川省成都市武侯区芳草东街">四川省成都市武侯区芳草东街</option>
	      </select>
	    </div>
	   
	  </div>
	 
	    
	
	
	  <div class="layui-form-item">
	    <div class="layui-input-block">
         <button class="layui-btn" lay-submit="" lay-filter="save" url="http://localhost:8080/Second/student/changroom" inputs="address:,sname:">新增</button>
	      <button type="button" class="layui-btn layui-btn-primary" function="close">关闭</button>
	    </div>
	  </div>
	</form>

	</div>
	
</body>
</html>
