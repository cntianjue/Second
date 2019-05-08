<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
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
	<script type="text/javascript" src="../../plugins/frame/js/fsDict.js?v=1.5.0"></script>
	<script type="text/javascript" src="../../plugins/frame/js/fs.js?v=1.5.0"></script>
	<script type="text/javascript" src="../../plugins/frame/js/frame.js?v=1.5.0"></script>
	<style type="text/css">
	#a{
	width:1000px;
	height:800px;
	
	}
	
	
	</style>
</head>
<body>
<shiro:hasRole name="users">

<div id="a">

<img  src="/images/401.png">

</div>

</shiro:hasRole>




<shiro:hasAnyRoles name="superadmins,admins">
   <div class="layui-fluid">
  <div class="layui-row layui-col-space1">
  
  	 <div class="layui-col-md12">
  	 	<div class="layui-row grid-demo">
	      <div class="layui-col-md3">
        	<button class="layui-btn" function="top" topUrl="views/datagrid2/change.jsp" topMode="add" topWidth="500px" topHeight="300px" topTitle="添加班级">
			  <i class="layui-icon">&#xe654;</i>添加班级
			</button>
			<button class="layui-btn layui-btn-danger" function="submit" url="/Second/class/deleteclass" isMutiDml="1" isConfirm="1" confirmMsg="确认要删除这个班吗？" inputs="cid:">
			  <i class="layui-icon">&#xe640;</i>删除班级
			</button>
		<!-- 	<button class="layui-btn" function="refresh">
			  <i class="layui-icon">&#x1002;</i>刷新
			</button> -->
	      </div>
	      <div class="layui-col-md12">
	         <table id="fsDatagrid" lay-filter="fsDatagrid" class="fsDatagrid" isLoad="1" url="/Second/class/showclass" isPage="1" defaultForm="query_form" height="full-135"></table>

	         <div class="fsDatagridCols">
	         
				<p checkbox="true"/>
			    <input type="hidden" name="cid"/>
			    <p field="cname" title="班级名称" width="33%" />
			    <p field="ctime" title="开班时间" width="33%" />
			    <p field="tname" title="带班老师" width="33%" />
			  
			</div>

			<script type="text/html" id="stateTpl">
				<input type="checkbox" name="state" lay-skin="switch" disabled lay-text="开启|关闭" {{ d.state == 1 ? 'checked' : '' }}>
			</script>
			<script type="text/html" id="barDemo">
				<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="top" topUrl="views/datagrid2/one.html" topMode="readonly" topWidth="800px" topHeight="600px" topTitle="查看demo" inputs="id:">查看</a>
 				<a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/datagrid2/one.html" topMode="edit" topWidth="800px" topHeight="600px" topTitle="编辑demo" inputs="id:">编辑</a>
  				<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="submit" url="/fsbus/DEMO1003" isConfirm="1" confirmMsg="是否确定删除当前记录？" inputs="id:">删除</a>
			</script>
	      </div>
	    </div>

  	 </div>

  </div>
  
</div>
	</shiro:hasAnyRoles>
</body>
</html>
