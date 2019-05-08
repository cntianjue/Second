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
</head>
<body>
	<div class="layui-fluid">

		<form form class="layui-form" id="edit_form" isLoad="1" isPage="1" loadUrl="/Second/dorm/dormall?${param.sid}">
	  <div class="layui-form-item">
    <label class="layui-form-label">房间地址：</label>
    <div class="layui-input-inline">
      <input type="text" name="saddress" required=""  lay-verify="required" placeholder="请输入功能号" autocomplete="off" class="layui-input"/>
    </div>
    <label class="layui-form-label">房间户型：</label>
    <div class="layui-input-inline">
      <input type="text" name="rtype" required=""  lay-verify="required" placeholder="请输入功能号名称" autocomplete="off" class="layui-input"/>
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">可容纳人：</label>
    <div class="layui-input-inline">
      <input type="text" name="count" required=""  lay-verify="required" placeholder="请输入功能号名称" autocomplete="off" class="layui-input"/>
    </div>
    <label class="layui-form-label">房屋类型</label>
    <div class="layui-input-inline">
      <select name="type" lay-verify="required">
        <option value="">--请选择--</option>
        <option value="男生宿舍">男生宿舍</option>
        <option value="女生宿舍">女生宿舍</option>
      
      </select>
    </div>
  
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label">房租：</label>
    <div class="layui-input-inline">
      <input type="text" name="money" required=""  lay-verify="required" placeholder="请输入功能号" autocomplete="off" class="layui-input"/>
    </div>
    <label class="layui-form-label">支付方式：</label>
    <div class="layui-input-inline">
      <input type="text" name="paytype" required=""  lay-verify="required" placeholder="请输入功能号名称" autocomplete="off" class="layui-input"/>
    </div>
  </div>
  
 
   <div class="layui-form-item">
    <label class="layui-form-label">房东：</label>
    <div class="layui-input-inline">
      <input type="text" name="master" required=""  lay-verify="required" placeholder="请输入功能号" autocomplete="off" class="layui-input"/>
    </div>
    <label class="layui-form-label">房东电话：</label>
    <div class="layui-input-inline">
      <input type="text" name="phone" required=""  lay-verify="required" placeholder="请输入功能号名称" autocomplete="off" class="layui-input"/>
    </div>
  </div>
    <div class="layui-form-item">
       <label class="layui-form-label">开班时间</label>
	    <div class="layui-input-inline">
	      <input type="text" name="rtime" autocomplete="off" class="layui-input fsDate" dateType="datetime" />
	    </div>
	    
    <label class="layui-form-label">房间状态</label>
    <div class="layui-input-inline">
      <select name="state" lay-verify="required">
        <option value="1">正常</option>
        <option value="0">设备损坏</option>
  
      </select>
    </div>
	    
	    
  
  </div>
     <div class="layui-col-md12">
						         <table id="fsDatagrid"   inputs="sid:" lay-filter="fsDatagrid" class="fsDatagrid" url="/Second/dorm/roompeople?sid=${param.sid}"  isPage="1" defaultForm="query_form" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	
					
								    <p field="name" title="姓名" width="33%" />
								    <p field="riphone" title="电话" width="33%"/>
								    <p field="rid" title="房间号" width="33%"/>
								
						 
								</div>

								
							
						      </div>
 
  <hr/>
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button type="button" class="layui-btn layui-btn-primary" function="close">确定</button>
	      <button type="button" class="layui-btn layui-btn-primary" function="close">关闭</button>
	    </div>
	  </div>
	</form>

	</div>
</body>
</html>
