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
	<div class="layui-row layui-col-space1">
		 <div class="layui-col-md12">
  	 		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			
			  <div class="layui-tab-content">
			  	  <div class="layui-tab-item layui-show">
			  	  	 <div class="layui-fluid">
			  	  	 	 
				  		 <div class="layui-col-md12">
				  		 	<div class="layui-row grid-demo">
						  
						      <div class="layui-col-md12">
						         <table id="fsDatagrid"   inputs="sid:" lay-filter="fsDatagrid" class="fsDatagrid" url="/Second/dorm/roompeople?sid=${param.sid}"  isPage="1" defaultForm="query_form" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	
					
								    <p field="name" title="姓名" width="33%" />
								    <p field="riphone" title="电话" width="33%"/>
								    <p field="rid" title="房间号" width="33%"/>
								
						 
								</div>

								
							
						      </div>
						    </div>
				  		 </div>
			  	  	 </div>
			  	  </div>
				
				 
				  		 </div>
			  	  	 </div>
				  </div>
			  </div>
			    <div class="layui-form-item">
	    <div class="layui-input-block">
	      
	      <button type="button" class="layui-btn" function="close" ">关闭</button>
	    </div>
	  </div>
			</div>

  		
</body>
</html>
