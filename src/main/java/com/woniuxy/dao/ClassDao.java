package com.woniuxy.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.woniuxy.mappers.ClassMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Class;
@Repository
public class ClassDao implements ClassMapper {
	@Resource
	private ClassMapper classMapper;
	@Override
	public List<Class> showClassInfo() {
		return  classMapper.showClassInfo();
	}
	@Override
	public void addTeacher(String tname) {
		classMapper.addTeacher(tname);
	}
	@Override
	public int selectTidByTname(String tname) {
	
		return classMapper.selectTidByTname(tname);
	}
	@Override
	public void addClass(String cname, int tid, String ctime,String tname) {
	classMapper.addClass(cname, tid, ctime,tname);
		
	}
	@Override
	public int removeClass(int cid) {
      return  classMapper.removeClass(cid);
		
	}
	@Override
	public int selectCountBycid(int cid) {
		return classMapper.selectCountBycid(cid);
	}

}
