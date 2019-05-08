<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
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
  	 		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			
			  <div class="layui-tab-content">
			  	  <div class="layui-tab-item layui-show">
			  	  	 <div class="layui-fluid">
			  	  	 	 <div class="layui-col-md12">
			  	  	 	 	<div class="layui-form-query">
								<form class="layui-form" id="query_form">
									<input type="hidden" id="type" name="type" value="write">
									<div class="layui-form-item">
										<div class="layui-inline">
											<label class="layui-form-mid">学生姓名：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="text" name="sname" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">班级：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="text" name="clas" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">所在房间：</label>
											<div class="layui-input-inline" style="width: 100px">
												<input type="text" name="room" autocomplete="off" class="layui-input "/>
											</div>
										</div>
										<div class="layui-inline">
											<div class="layui-input-inline">
												<button class="layui-btn" type="button" function="query"><i class="layui-icon">&#xe615;</i>查询</button>
											</div>
										</div>
									</div>
								</form>
							</div>
				  		 </div>
				  		 <div class="layui-col-md12">
				  		 	<div class="layui-row grid-demo">
						     
						      <div class="layui-col-md3">
						    
									<button class="layui-btn" function="top" topUrl="views/studentManage/add.html" topWidth="800px" topHeight="700px" topTitle="学生入住" inputs="type:#type">
								  <i class="layui-icon">&#xe654;</i>学生入住
								</button>
								<button class="layui-btn" function="top" topUrl="views/studentManage/show.jsp" topWidth="700px" topHeight="800px" topTitle="学生信息一览" inputs="iphone:">
								  <i class="layui-icon">&#x1002;</i>学生详细信息
								</button>
								</div>
								 <div class="layui-col-md3">
					          <button class="layui-btn" function="top" topUrl="views/studentManage/change.jsp" topWidth="700px" topHeight="400px" topTitle="换房" inputs="iphone:"">
								  <i class="layui-icon">&#x1002;</i>学生换房
								</button>
								<button class="layui-btn layui-btn-danger" function="submit" url="/Second/student/remove" isSelect="1" isConfirm="1" confirmMsg="确定要退房吗？管理员" inputs="sid:,sno:">
								  <i class="layui-icon">&#xe640;</i>学生退房
								</button>
								
						      </div>
						      <div class="layui-col-md12">
						         <table id="fsDatagrid" lay-filter="fsDatagrid" class="fsDatagrid" url="/Second/student/studentInfoShow" isPage="1" defaultForm="query_form" height="full-210" inputs="sname:,clas:,room:,iphone:"></table>
                                            
						         <div class="fsDatagridCols">
						         			
									<p checkbox="true"/>
								    <p field="sname" title="学生姓名" width="100" />
								    <p field="sex" title="性别" width="100" />
								    <p field="cname" align="center" title="班级" width="260" />
								    <p field="saddress" align="center" title="所在房间" width="300" />
								    <p field="iphone" title="联系电话" width="200"/>
								      <input type="hidden" name="sid"/>
								       <input type="hidden" name="sno"/>
						
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
							
						      </div>
						    </div>
				  		 </div>
			  	  	 </div>
			  	  </div>
				  <div class="layui-tab-item">
				  	<div class="layui-fluid">
			  	  	 	 <div class="layui-col-md12">
			  	  	 	 	<div class="layui-form-query">
								<form class="layui-form2" id="query_form2">
									<input type="hidden" id="type2" name="type" value="read">
									<div class="layui-form-item">
										<div class="layui-inline">
											<label class="layui-form-mid">id：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="tel" name="id" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">名称：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="text" name="name" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">时间：</label>
											<div class="layui-input-inline" style="">
												<input type="text" name="createDate" autocomplete="off" class="layui-input fsDate" dateRange="1" placeholder=" - "/>
											</div>
										</div>
										<div class="layui-inline">
											<div class="layui-input-inline">
												<button class="layui-btn" type="button" function="query" tableId="fsDatagrid2"><i class="layui-icon">&#xe615;</i>查询</button>
											</div>
										</div>
									</div>
								</form>
							</div>
				  		 </div>
				  		 <div class="layui-col-md12">
				  		 	<div class="layui-row grid-demo">
						      <div class="layui-col-md3">
					        	<button class="layui-btn" function="top" topUrl="views/tabDatagrid/add.html" tableId="fsDatagrid2" topWidth="700px" topHeight="500px" topTitle="新增demo" inputs="type:#type2">
								  <i class="layui-icon">&#xe654;</i>新增
								</button>
								<button class="layui-btn layui-btn-danger" function="submit" tableId="fsDatagrid2" url="/fsbus/DEMO1003" isSelect="1" isConfirm="1" confirmMsg="是否确定删除选中的数据？" inputs="id:">
								  <i class="layui-icon">&#xe640;</i>删除
								</button>
								<button class="layui-btn" tableId="fsDatagrid2" function="refresh">
								  <i class="layui-icon">&#x1002;</i>刷新
								</button>
						      </div>
						   
						    </div>
				  		 </div>
			  	  	 </div>
				  </div>
				  <div class="layui-tab-item">
				  	<div class="layui-fluid">
			  	  	 	 <div class="layui-col-md12">
			  	  	 	 	<div class="layui-form-query">
								<form class="layui-form2" id="query_form3">
									<input type="hidden" id="type3" name="type" value="dai">
									<div class="layui-form-item">
										<div class="layui-inline">
											<label class="layui-form-mid">id：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="tel" name="id" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">名称：</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="text" name="name" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-mid">时间：</label>
											<div class="layui-input-inline" style="">
												<input type="text" name="createDate" autocomplete="off" class="layui-input fsDate" dateRange="1" placeholder=" - "/>
											</div>
										</div>
										<div class="layui-inline">
											<div class="layui-input-inline">
												<button class="layui-btn" type="button" function="query" tableId="fsDatagrid3"><i class="layui-icon">&#xe615;</i>查询</button>
											</div>
										</div>
									</div>
								</form>
							</div>
				  		 </div>
				  		
			  	  	 </div>
				  </div>
			  </div>
			</div>

  		 </div>

  </div>
</div>
	</shiro:hasAnyRoles>
</body>
</html>
