package com.woniuxy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Class;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Role;
import com.woniuxy.pojo.Room;
import com.woniuxy.pojo.Student;

import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;

@Service
public class UserService implements UserMapper{
	@Resource
	private UserMapper userDao;

	public UserMapper getUserDao() {
		return userDao;
	}
	public void setUserDao(UserMapper userDao) {
		this.userDao = userDao;
	}
	@Override
	public List<User> all() {
		return userDao.all();
	}
	@Override
	public void addUser(User user) {
		userDao.addUser(user);
		userDao.addrRole(user);
		System.out.println(userDao.SelectRid() +user.getRole());
		userDao.addRoleUser(userDao.SelectRid(), user.getAccount());
	}
	@Override
	public User selectByAccount(User user) {
		return userDao.selectByAccount(user);
	}
	
	@Override
	public User_role findRoleByAcc(User_role user) {
		return userDao.findRoleByAcc(user);
	}
	@Override
	public Role findRnameByRid(int rid) {
		
		return userDao.findRnameByRid(rid);
	}
	@Override
	public int message() {
		return userDao.message();
	}
	@Override
	public void addrRole(User user) {	
	}
	
	@Override
	public void addRoleUser(int rid, String rname) {	
	}
	@Override
	public int SelectRid() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String show(String iphone) {
		// TODO Auto-generated method stub
		return userDao.show(iphone);
	}
	
	

}
