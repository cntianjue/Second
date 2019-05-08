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
	
	#a{
	position: relative;
	left:  250px;
	}
	
	
	</style>
</head>
<body>


     <div class="layui-col-md12">
						         <table id="fsDatagrid"   inputs="sid:" lay-filter="fsDatagrid" class="fsDatagrid" url="/Second/dorm/selectfault?sid=${param.sid}"  isPage="1" defaultForm="query_form" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	
				                	 <p checkbox="true"/> 
								    <p field="content" title="损坏描述" width="33%" />
								    <p field="htime" title="报损日期" width="33%"/>
								    <p field="handle" title="是否解决" width="33%"/>
								
						 
								</div>

								
							
						      </div>
	<div class="layui-fluid">
		  <div class="layui-form-item" id="a">
<button class="layui-btn " function="submit" url="/Second/dorm/removefault?sid=${param.sid}" isSelect="1" isConfirm="1" confirmMsg="房间设施真的维修好了吗？" inputs="hid:">
								  <i class="layui-icon">&#xe640;</i>处理已损坏设备
								</button>
								</div>
	<form class="layui-form">
	   <input type="hidden" name="type"/>
	
	   <!-- <div class="layui-form-item">
	    <label class="layui-form-label">性别</label>
	    <div class="layui-input-inline">
	      <input type="radio" name="sex" value="男" title="男" checked="checked">
	      <input type="radio" name="sex" value="女" title="女">
	    </div> -
	     <label class="layui-form-label">状态</label>
	    <div class="layui-input-inline">
	      <input type="checkbox" name="state" lay-skin="switch" lay-text="开启|关闭" value="1" checked>
	    </div>
	  </div> -->
	  <div class="layui-form-item">
	  
	    <label class="layui-form-label">报修时间</label>
	    <div class="layui-input-inline">
	      <input type="text" name="htime" autocomplete="off" class="layui-input fsDate" dateType="datetime" />
	    </div>
	  </div>
	 	
					
					
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">描述</label>
	    <div class="layui-input-block">
	      <textarea name="content" placeholder="请输入描述" class="layui-textarea"></textarea>
	    </div>
	  </div>
	  <hr/>
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit="" lay-filter="save" url="/Second/dorm/addfault?sid=${param.sid}" inputs="htime:,content:">添加设备损坏纪录</button>
	      
	      <button type="button" class="layui-btn layui-btn-primary" function="close">关闭</button>
	     
	    </div>
	  </div>
	</form>

	</div>

</body>
</html>
