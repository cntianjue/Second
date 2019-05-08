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
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E5%8A%9F%E8%83%BD%E6%A8%A1%E5%9D%97.png)
 
 visio制图

## 功能展示（部分展示，具体在功能展示.pdf中）

### 普通用户权限
 
 ###### 登录界面
  ![image](https://github.com/cntianjue/Second/blob/master/img/%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7/QQ%E5%9B%BE%E7%89%8720190508074618.png)
 
 ###### 首页
  ![image](https://github.com/cntianjue/Second/blob/master/img/%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7/QQ%E5%9B%BE%E7%89%8720190508074704.png)

 ###### 无权限展示
  ![image](https://github.com/cntianjue/Second/blob/master/img/%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7/QQ%E5%9B%BE%E7%89%8720190508074731.png)
  
 ###### 信息展示
  ![image](https://github.com/cntianjue/Second/blob/master/img/%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7/QQ%E5%9B%BE%E7%89%8720190508074908.png)
 ###### 报修
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7/QQ%E5%9B%BE%E7%89%8720190508075058.png)
 
 ### 管理员权限

###### 班级信息
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E7%AE%A1%E7%90%86%E5%91%98/QQ%E5%9B%BE%E7%89%8720190508075340.png)

###### 学生管理信息
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E7%AE%A1%E7%90%86%E5%91%98/QQ%E5%9B%BE%E7%89%8720190508075457.png)

###### 学生个人信息展示
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E7%AE%A1%E7%90%86%E5%91%98/QQ%E5%9B%BE%E7%89%8720190508075658.png)

###### 宿舍信息
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E7%AE%A1%E7%90%86%E5%91%98/QQ%E5%9B%BE%E7%89%8720190508075817.png)

###### 报修提示
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E7%AE%A1%E7%90%86%E5%91%98/QQ%E5%9B%BE%E7%89%8720190508081724.png)
 
 ### 超管权限
 
 ###### 登录界面

![image](https://github.com/cntianjue/Second/blob/master/img/%E8%B6%85%E7%AE%A1/QQ%E5%9B%BE%E7%89%8720190508081818.png)

###### 添加用户
 
 ![image](https://github.com/cntianjue/Second/blob/master/img/%E8%B6%85%E7%AE%A1/QQ%E5%9B%BE%E7%89%8720190508081913.png)
 
 ## 优化建议
 
##### 1、增加超管对用户权限修改功能

##### 2、增加所有用户信箱功能

##### 3、数据库性能优化

##### 4、对所有功能进一步细节性优化

## 后续

* 本项目采用方式比较基础，希望为入门朋友提供一个demo，如果对你有帮助，抱拳谢谢打赏！

![image](https://github.com/cntianjue/Second/blob/master/src/main/webapp/images/zhifu.png)


####### 有任何问题可联系作者QQ:1474459701

 
 
