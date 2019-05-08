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
</head>
<body>

<shiro:hasRole name="users">
 <div class="layui-fluid">
	<div class="layui-row layui-col-space1">
		 <div class="layui-col-md12">
  	 		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			  <!-- <ul class="layui-tab-title">
			    <li class="layui-this">测试一</li>
			    <li>测试二</li>
			    <li>测试三</li>
			  </ul> -->
			  <div class="layui-tab-content">
			  	  <div class="layui-tab-item layui-show">
			  	  	 <div class="layui-fluid">
			  	  	 	  <div class="layui-col-md12">
			  	  	 	 	<div class="layui-form-query">
								<form class="layui-form" id="query_form">
									<input type="hidden" id="type" name="type" value="write">
									<div class="layui-form-item">
										<div class="layui-inline">
											<label class="layui-form-mid">宿舍号</label>
											<div class="layui-input-inline" style="width: 100px;">
												<input type="text"  name="id" autocomplete="off" class="layui-input"/>
											</div>
										</div>
										<!-- <div class="layui-inline">
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
										</div> -->
										<div class="layui-inline">
											<div class="layui-input-inline">
												<button class="layui-btn"  type="button" function="query"><i class="layui-icon">&#xe615;</i>查询</button>
											</div>
										</div>
									</div>
								</form>
							</div>
				  		 </div> 
				  
				  		 <div class="layui-col-md12">
				  		 	<div class="layui-row grid-demo">
						     <!--  <div class="layui-col-md3">
					        	<button class="layui-btn" function="top" topUrl="views/tabDatagrid/add.html" topWidth="700px" topHeight="500px" topTitle="新增demo" inputs="type:#type">
								  <i class="layui-icon">&#xe654;</i>新增
								</button>
								<button class="layui-btn layui-btn-danger" function="submit" url="/fsbus/DEMO1003" isSelect="1" isConfirm="1" confirmMsg="是否确定删除选中的数据？" inputs="id:">
								  <i class="layui-icon">&#xe640;</i>删除
								</button>
								<button class="layui-btn" function="refresh">
								  <i class="layui-icon">&#x1002;</i>刷新
								</button>
						      </div> -->
						      <div class="layui-col-md12">
						         <table id="fsDatagrid" method="get" lay-filter="fsDatagrid" url="/Second/dorm/test" class="fsDatagrid"  isPage="1" defaultForm="query_form" height="full-210" isload="0"></table>

						         <div class="fsDatagridCols">
						         <!-- 	<p type="numbers" title="编号"/> -->
									<!-- <p checkbox="true"/> -->
								    <p field="sid" title="宿舍号" width="200" "/>
								    <p field="saddress" title="宿舍地址" width="280" />
								    <p field="count" title="可容纳人数" width="120" />
								    <p field="have" title="已住人数" width="100" />
						<!-- 		    <p field="state" title="是否满员" width="100" templet="#stateTpl"/> -->
								    <p field="master" title="房东" width="180"/>
								    <p field="phone" title="房东联系方式" width="180"/>
								    <p field="type" title="宿舍类型" width="100" /> 
								    <p fixed="right" align="center" toolbar="#barDemo" title="操作" width="150"/>
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
                                     
 									<a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/tabDatagrid/content.jsp"   topWidth="700px" topHeight="500px" topTitle="住宿情况"  inputs="sid:">详情</a>
  									<a class="layui-btn layui-btn-danger layui-btn-xs"  lay-event="top" topUrl="views/tabDatagrid/add.html" topWidth="700px" topHeight="500px" topTitle="房间报修" inputs="id:">报修</a>
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
						      <div class="layui-col-md12">
						         <table id="fsDatagrid2" lay-filter="fsDatagrid2" class="fsDatagrid" url="/fsbus/DEMO1001" isPage="1" defaultForm="query_form2" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	<p type="numbers" title="#"/>
									<p checkbox="true"/>
								    <p field="id" title="ID" width="100" sort="true"/>
								    <p field="name" title="名称" width="300"sort="true" />
								    <p field="city" title="城市" width="100" templet="#cityTpl2"/>
								    <p field="sex" title="性别" width="100" />
								    <p field="state" title="状态" width="100" templet="#stateTpl2"/>
								    <p field="createdTime" title="创建时间" width="180"/>
								    <p field="modifiedTime" title="修改时间" width="180"/>
								    <p fixed="right" align="center" toolbar="#barDemo2" title="操作" width="150"/>
								</div>

								<script type="text/html" id="cityTpl2">
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

								<script type="text/html" id="stateTpl2">
									<input type="checkbox" name="state" lay-skin="switch" disabled lay-text="开启|关闭" {{ d.state == 1 ? 'checked' : '' }}>
								</script>
								<script type="text/html" id="barDemo2">
 									<a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/tabDatagrid/edit.html" topWidth="700px" topHeight="500px" topTitle="编辑demo" inputs="id:">编辑</a>
  									<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="submit" url="/fsbus/DEMO1003" isConfirm="1" confirmMsg="是否确定删除当前记录？" inputs="id:">删除</a>
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
				  		 <div class="layui-col-md12">
				  		 	<div class="layui-row grid-demo">
						      <div class="layui-col-md3">
					        	<button class="layui-btn" function="top" topUrl="views/tabDatagrid/add.html" tableId="fsDatagrid3" topWidth="700px" topHeight="500px" topTitle="新增demo" inputs="type:#type3">
								  <i class="layui-icon">&#xe654;</i>新增
								</button>
								<button class="layui-btn layui-btn-danger" function="submit" tableId="fsDatagrid3" url="/fsbus/DEMO1003" isSelect="1" isConfirm="1" confirmMsg="是否确定删除选中的数据？" inputs="id:">
								  <i class="layui-icon">&#xe640;</i>删除
								</button>
								<button class="layui-btn" tableId="fsDatagrid3" function="refresh">
								  <i class="layui-icon">&#x1002;</i>刷新
								</button>
						      </div>
						      <div class="layui-col-md12">
						         <table id="fsDatagrid3" lay-filter="fsDatagrid3" class="fsDatagrid" url="/fsbus/DEMO1001" isPage="1" defaultForm="query_form3" height="full-210"></table>

						         <div class="fsDatagridCols">
						         	<p type="numbers" title="#"/>
									<p checkbox="true"/>
								    <p field="id" title="ID" width="100" sort="true"/>
								    <p field="name" title="名称" width="300"sort="true" />
								    <p field="city" title="城市" width="100" templet="#cityTpl3"/>
								    <p field="sex" title="性别" width="100" />
								    <p field="state" title="状态" width="100" templet="#stateTpl3"/>
								    <p field="createdTime" title="创建时间" width="180"/>
								    <p field="modifiedTime" title="修改时间" width="180"/>
								    <p fixed="right" align="center" toolbar="#barDemo3" title="操作" width="150"/>
								</div>

								<script type="text/html" id="cityTpl3">
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

								<script type="text/html" id="stateTpl3">
									<input type="checkbox" name="state" lay-skin="switch" disabled lay-text="开启|关闭" {{ d.state == 1 ? 'checked' : '' }}>
								</script>
								<script type="text/html" id="barDemo3">
 									<a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/tabDatagrid/edit.html" topWidth="700px" topHeight="500px" topTitle="编辑demo" inputs="id:">编辑</a>
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
</div>

</shiro:hasRole>



	<shiro:hasAnyRoles name="superadmins,admins">

<div class="layui-fluid">
  <div class="layui-row layui-col-space1">
  	 <div class="layui-col-md12">
<div class="layui-form-query">
<form class="layui-form" id="query_form">
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-mid">房间地址：</label>
			<div class="layui-input-inline" style="width: 100px;">
				<input type="text" name="saddress" autocomplete="off" class="layui-input"/>
			</div>
		</div>
		
		<div class="layui-inline">
			<label class="layui-form-mid">房间状态：</label>
			<div class="layui-input-inline" style="width: 150px;">
				<select name="state" lay-verify="required">
				        <option value=0>--请选择--</option>
			        <option value=1>正常</option>
			        <option value=2>设备损坏</option>
		
			      </select>
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-mid">可住房间：</label>
			<div class="layui-input-inline" style="width: 150px;">
				<select name="can" lay-verify="required">
			        <option value="">--请选择--</option>
			        <option value="">不限</option>
			        <option value="4">可住房间</option>
			      
			      </select>
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-mid">房间类型：</label>
			<div class="layui-input-inline" style="width: 150px;">
				<select name="type" lay-verify="required">
			        <option value="">--请选择--</option>
			        <option value="男生宿舍">男生宿舍</option>
			        <option value="女生宿舍">女生宿舍</option>
			      </select>
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
        	<button class="layui-btn" function="top" topUrl="views/complexDatagrid/add.html" topWidth="700px" topHeight="450px" topTitle="添加房间">
			  <i class="layui-icon">&#xe654;</i>添加房间
			</button>
			<button class="layui-btn" function="top" topUrl="views/complexDatagrid/show.jsp" topWidth="700px" topHeight="600px" isSelect="1" topTitle="房间信息" inputs="sid:">
			  <i class="layui-icon">&#xe642;</i>查看房间信息
			</button>
		
	      </div>
	      	<button class="layui-btn" function="top" topUrl="views/complexDatagrid/weixiu.jsp" topWidth="700px" topHeight="600px" isSelect="1" topTitle="房间设施" inputs="sid:">
			  <i class="layui-icon">&#x1002;</i>查看房间设施
			</button>
				<button class="layui-btn layui-btn-danger" function="submit" url="/Second/dorm/removedorm" isSelect="1" isConfirm="1" confirmMsg="确定要删除这间房间吗？" inputs="sid:">
								  <i class="layui-icon">&#xe640;</i>删除房间
								</button>
	      <div class="layui-col-md12" >
						         <table   id="fsDatagrid" method="get" lay-filter="fsDatagrid" url="/Second/dorm/dorminfo" class="fsDatagrid"  isPage="1" defaultForm="query_form" height="full-210" isload="1"></table>

						         <div class="fsDatagridCols">
						         <!-- 	<p type="numbers" title="编号"/> -->
								 <p checkbox="true"/> 
								   <input type="hidden" field="sid">
								    <p field="saddress" title="宿舍地址" width="280" align="center" />
								    <p field="count" title="可容纳人数" width="120"  align="center" />
								    <p field="have" title="已住人数" width="100"  align="center"/>
					   <p field="money" title="租金" width="180" align="center"/>
					    <p field="state" title="状态" width="100" templet="#stateTpl2" align="center"/>
								    <p field="master" title="房东" width="120" align="center"/>
								    
								   
								    <p field="phone" title="房东联系方式" width="180" align="center"/>
								    <p field="type" title="宿舍类型" width="100"  align="center"/> 
								    <p fixed="right" align="center" toolbar="#barDemo" title="管理" width="150"/>
								</div>

		<script type="text/html" id="typeTpl">
  			{{#  if(d.funcType == 'c'){ }}
  			      功能号实现类
			{{# } else if(d.funcType == 's'){ }}
				service实现类
			{{# } else if(d.funcType == 'm'){ }}
				mapper实现类
 			{{#  } }}
		</script>
		<script type="text/html" id="stateTpl">
  			{{#  if(d.state == 0){ }}
  			    <span style="color: #c2c2c2">关闭</span>
			{{# } else if(d.state == 1){ }}
				<span style="color: #5FB878">启用</span>
			{{# } else if(d.state == 2){ }}
				<span style="color: #FF5722;">作废</span>
 			{{#  } }}
		</script>
<script type="text/html" id="stateTpl2">
									<input type="checkbox" name="state" lay-skin="switch" disabled lay-text="正常|故障" {{ d.state == 1 ? 'checked' : '' }}>
								</script>
		<script type="text/html" id="barDemo">
 		 <a class="layui-btn layui-btn-xs" lay-event="top" topUrl="views/complexDatagrid/paramIndex.html" topWidth="800px" topHeight="460px" isMaxWindow="" topTitle="入参管理" inputs="funcId:$id">管理</a>
		</script>
	      </div>
	    </div>

  	 </div>

  </div>
</div>
	</shiro:hasAnyRoles>
</body>
</html>
