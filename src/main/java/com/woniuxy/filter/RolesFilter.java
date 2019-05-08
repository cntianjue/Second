package com.woniuxy.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

/*
 * 自定义的过滤器
 */
public class RolesFilter extends AuthorizationFilter{

	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		//1.获取subject
		Subject subject = SecurityUtils.getSubject();
		//2.获取shiro.xml文件中roles[]里面的角色
		String[] roles = (String[])mappedValue;
		if (roles!=null && roles.length!=0) {
			for (String role : roles) {
				if (subject.hasRole(role)) {//只要拥有其中一个角色，就返回true表示通过
					return true;
				}
			}
		}
		return false;
	}

}
