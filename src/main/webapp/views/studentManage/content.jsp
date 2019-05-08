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
						         <table id="fsDatagrid"   inputs="sid:" lay-filter="fsDatagrid" class="fsDatagrid" url="/Second/user/roompeople?sid=${param.sid}"  isPage="1" defaultForm="query_form" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	
					
								    <p field="name" title="姓名" width="33%" />
								    <p field="riphone" title="电话" width="33%"/>
								    <p field="rid" title="房间号" width="33%"/>
								
						 
								</div>

								<script type="text/html" id="cityTpl">
  									{{# if(d.city == '0'){ }}
  										   北京
									{{# } else if(d.city == '1'){ }}
										上海
									{{# } else if(d.city == '2'){ }}
										广州
 									{{# } else if(d.city == '3'){ }}
										深圳
 									{{# } else if(d.city == '4'){ }}
										杭州
 									{{#  } }}
								</script>

								<script type="text/html" id="stateTpl">
									<input type="checkbox" name="state" lay-skin="switch" disabled lay-text="开启|关闭" {{ d.state == 1 ? 'checked' : '' }}>
								</script>
								<script type="text/html" id="barDemo">
 									<a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/tabDatagrid/edit.html" topWidth="700px" topHeight="500px" topTitle="住宿情况" inputs="id:">编辑</a>
  									<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="submit" url="/fsbus/DEMO1003" isConfirm="1" confirmMsg="是否确定删除当前记录？" inputs="id:">删除</a>
								</script>
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
