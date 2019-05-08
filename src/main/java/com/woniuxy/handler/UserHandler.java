package com.woniuxy.handler;


import java.io.File;
import java.io.IOException;
import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Result;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;
import com.woniuxy.mappers.StudentMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.DataFZ;
import com.woniuxy.pojo.DataFZNoPage;
import com.woniuxy.pojo.DataFZNoPageInfo;
import com.woniuxy.pojo.Test;
import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;
import com.woniuxy.service.StudentService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Resource
	private UserMapper userService;
	private static int count=6;
	public UserMapper getUserService() {
		return userService;
	}
	public void setUserService(UserMapper userService) {
		this.userService = userService;
	}

	//注册
	@RequestMapping("/register")
	public void register(String account,String pwd,String role,String state) {
		System.out.println(account+pwd+role+state);
		//密码一定要加密   lisi   123456
		User user=new User();
		user.setAccount(account);
		user.setPwd(pwd);
		user.setRole(role);
	    user.setPwd(new SimpleHash("MD5", user.getPwd(), user.getAccount(), 1024).toString());
		System.out.println(new SimpleHash("MD5", user.getPwd(), user.getAccount(), 1024).toString());
		userService.addUser(user);
		
	}	
	@RequestMapping("/login")
	public String login(User user) {
		
	System.out.println("进入方法："+user);
	Subject currentUser = SecurityUtils.getSubject();
		//2.没有认证就执行认证（没有认证门面对象中没有值）
	/*	if (!currentUser.isAuthenticated()) {*/
			//创建token，放入账号密码
			UsernamePasswordToken token = new UsernamePasswordToken(user.getAccount(), user.getPwd());
			try {
				currentUser.login(token);
				//如果没出异常说明认证成功，代表账号密码正确
				System.out.println("认证成功,跳转界面");
				//跳转到主界面
				return "redirect:/toindex.jsp";
			} catch (UnknownAccountException e) {
				System.out.println("账号错误");
			} catch (IncorrectCredentialsException e) {
				System.out.println("密码错误");
			} catch (LockedAccountException e) {
				System.out.println("账号被锁定");
			} catch (AuthenticationException e) {
				System.out.println("不知道为啥");
				e.printStackTrace();
			}
		/*}*/
		System.out.println("认证失败");
	
		return "redirect:/error.jsp";
		
	}
//文件上传
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public Object uploadHead(@RequestParam("file") MultipartFile file, HttpSession session) throws IllegalStateException, IOException {

            if (file != null) {
                //获取文件名
                String fileName = file.getOriginalFilename();
                //截取扩展名
                String extName = fileName.substring(fileName.lastIndexOf("."));
               
                List list = new ArrayList();
                list.add(".jpg");
                list.add(".png");
                list.add(".jpeg");
                list.add(".gif");
                if(list.contains(extName.toLowerCase())){
                
                    //01获取服务器项目部署的路径，并在根目录下创建 myphoto 目录
                   String realPath = session.getServletContext().getRealPath("images");
                   String path=realPath.substring(0, realPath.length()-14);
                   path=path+"\\images";
                    //02也可以直接定义文件路径       
                    String photoFileName = new Date().getTime()+extName;
                    System.out.println(photoFileName);
                    String real="/"+"images"+"/"+photoFileName;
                    String descPath = realPath + "\\" + photoFileName;
                   /* String filePath=realPath1+photoFileName;*/
                    System.out.println("保存路径："+descPath);
                    file.transferTo(new File(path,photoFileName));
                  Map<String, Object> a=new HashMap<String,Object>();
                  System.out.println(real);
                  a.put("code", 200);
                  a.put("message",real);
                    return a;
               
                }else {
                        return -1;//文件类型不正确
                    }
                }else {
                    return 0;//上传文件为空
                }
            }
    
    @RequestMapping(value="message")
    @ResponseBody    
    public Object message() {
System.out.println("进入轮询");
       int changecount=userService.message();
    	if(changecount>count) {
    		count=changecount;
    		return "have";
    	}
    	return "no";
    	
    }
    @RequestMapping(value="showImg")
    @ResponseBody    
    public Object show(String iphone) {
System.out.println("进入展示");
System.out.println(iphone);
      
    	return userService.show(iphone);
    	
    }
    	
}
