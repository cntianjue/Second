# 宿舍管理系统

## 项目简要介绍
#### 软件环境：win7（32)、tomcat8.0、mysql5.6.15、jdk1.8
#### 开发工具： eclipse（32位）

#### 采用shiro分权：用户、管理员、超管
#####  1、用户可以操作宿舍报修、详情
#####  2、管理员可以管理班级、学生、宿舍，有消息提示
#####  3、超管除了管理员功能外，可以增加用户

## 如何开始
##### 1、将项目导入你的eclipse
##### 2、注意：在图片展示模块我对Tomcat的service.xml进行了路径配置如下：
#####  '<'Context docBase="Second" path="/Second" reloadable="true" source="org.eclipse.jst.jee.server:Second"/></Host> "
#####  src引用格式/images/图片名称（images在webapps下），你也可以自定义.
##### 3、对spring-context-mvc.xml的数据库信息进行配置

## 模块介绍

（https://github.com/cntianjue/Second/blob/master/img/%E5%8A%9F%E8%83%BD%E6%A8%A1%E5%9D%97.png）
 
