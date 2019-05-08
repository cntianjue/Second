package com.woniuxy.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Class;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Role;
import com.woniuxy.pojo.Room;
import com.woniuxy.pojo.Student;

import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;

@Repository
public class UserDao implements UserMapper{
	@Resource
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	@Override
	public List<User> all() {
		return userMapper.all();
	}
	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}
	@Override
	public User selectByAccount(User user) {
		return userMapper.selectByAccount(user);
	}
	@Override
	public User_role findRoleByAcc(User_role user) {
		return userMapper.findRoleByAcc(user);
	}
	@Override
	public Role findRnameByRid(int rid) {
	
		return userMapper.findRnameByRid(rid);
	}
	@Override
	public int message() {
		return userMapper.message();
	}
	@Override
	public void addrRole(User user) {
		userMapper.addrRole(user);
		
	}
	@Override
	public int SelectRid() {
		return userMapper.SelectRid();
	}
	@Override
	public void addRoleUser(int rid, String rname) {
		userMapper.addRoleUser(rid, rname);
	}
	@Override
	public String show(String iphone) {
		// TODO Auto-generated method stub
		return userMapper.show(iphone);
	}

	
	
	}



	
	

