package com.woniuxy.realm;

import java.security.Provider.Service;
import java.security.acl.Permission;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Role;
import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;

//身份认证、授权
public class MyRealm extends AuthorizingRealm{
	@Resource
	private UserMapper userService;
	public UserMapper getUserService() {
		return userService;
	}
	public void setUserService(UserMapper userService) {
		this.userService = userService;
	}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("正在授权.....");
		String account = (String)principals.getPrimaryPrincipal();	
		User_role user = new User_role();
		user.setAccount(account);
		
		String  role= userService.findRoleByAcc(user).getRole().getRname();	
		System.out.println("用户的角色是："+role);
		Set<String> roles = new HashSet<>();
		roles.add(role);	
		Set<String>perms = new HashSet<>();
		if(role.equals("admins")) {
		String a = "admins";
		perms.add(a);
		}
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		info.addStringPermissions(perms);
		return info;
	}
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println("正在进行shiro认证...");
		//1.获取前端的账号：需要通过账号查询数据库
		System.out.println("用户输入的账号是："+token.getPrincipal());
		String account = (String)token.getPrincipal();
		//2.用account到数据库中去查询：通过service查询
		User user = new User();
		user.setAccount(account);
		user = userService.selectByAccount(user);
		if (user==null) {
			return null;
		}
		System.out.println("后台拿到的密码是："+user.getPwd());
		System.out.println(account);
		ByteSource byteSource = ByteSource.Util.bytes(account);
		System.out.println(byteSource);
		AuthenticationInfo info = 
				new SimpleAuthenticationInfo(user.getAccount(), user.getPwd(), byteSource, getName());
		System.out.println(info.toString());
		return info;
	}
	
}
