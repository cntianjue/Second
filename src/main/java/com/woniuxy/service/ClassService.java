package com.woniuxy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.woniuxy.mappers.ClassMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Class;
@Service
public class ClassService implements ClassMapper {
	@Resource
	private ClassMapper classDao;
	@Override
	public List<Class> showClassInfo() {
		return classDao.showClassInfo();
	}
	@Override
	public void addTeacher(String tname) {
	
		
	}
	@Override
	public int selectTidByTname(String tname) {

		return classDao.selectTidByTname(tname);
	}
	@Override
	public void addClass(String cname, int tid, String ctime,String tname) {
		
	     classDao.addTeacher(tname);
	     classDao.addClass(cname, classDao.selectTidByTname(tname), ctime, tname);
	}
	@Override
	public int removeClass(int cid) {
		if(classDao.selectCountBycid(cid)>0) {
			return 0;
		}else {
		classDao.removeClass(cid);
		}
		return 1;
		}
	@Override
	public int selectCountBycid(int cid) {
		return 0;
	}

}
