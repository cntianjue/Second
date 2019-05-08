package com.woniuxy.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.woniuxy.mappers.StudentMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Student;
@Repository
public class StudentDao implements StudentMapper {
	@Resource
	private StudentMapper studentMapper;
	@Override
	public List<Student> selectStuInfoBySnameClassRoom1(String sname, String cname, String saddress, String iphone) {
		return studentMapper.selectStuInfoBySnameClassRoom1(sname, cname, saddress, iphone);
	}

	@Override
	public List<Student> selectStuInfoBySnameClassRoom() {
		return studentMapper.selectStuInfoBySnameClassRoom();
	}

	@Override
	public void addStudent(String sname, String sex, String iphone, int cid,String img) {
		studentMapper.addStudent(sname, sex, iphone, cid,img);

	}

	@Override
	public int selectSnoBySname(String sname) {
		return studentMapper.selectSnoBySname(sname);
	}

	@Override
	public int selectStateBySid(int sid) {
		return studentMapper.selectStateBySid(sid);
	}

	@Override
	public String selectMoneyBySid(int sid) {
		return studentMapper.selectMoneyBySid(sid);
	}

	@Override
	public int selectSidBySaddress(String saddress) {
		return studentMapper.selectSidBySaddress(saddress);
	}

	@Override
	public void addRoominfo(String sname, int sid, String iphone, int sno, String createdTime, String money,
			int state) {
	studentMapper.addRoominfo(sname, sid, iphone, sno, createdTime, money, state);
		
	}

	@Override
	public int addStu(String sclass, String room, String sname, String iphone, String sex, String createdTime,
			String img) {
		return studentMapper.addStu(sclass, room, sname, iphone, sex, createdTime, img);
	}

	@Override
	public int selectCountBySid(int sid) {
		return studentMapper.selectCountBySid(sid);
	}

	@Override
	public int selectHaveBySid(int sid) {
		return studentMapper.selectHaveBySid(sid);
	}

	@Override
	public void toUpdateHave(int sid) {
		studentMapper.toUpdateHave(sid);
	}

	@Override
	public int selectCidByCname(String cname) {
		return studentMapper.selectCidByCname(cname);
	}

	@Override
	public int  changeRoom(int sid,String sname) {
		return studentMapper.changeRoom(sid,sname);
		
	}

	@Override
	public int changeCountNew(int sid) {
		return studentMapper.changeCountNew(sid);
	}

	@Override
	public int changeCountOld(String saddress) {
		return studentMapper.changeCountOld(saddress);
	}

	@Override
	public String selectSaddressBySname(String sname) {
		return studentMapper.selectSaddressBySname(sname);
	}

	@Override
	public int toUpdateStudent(int sno) {
		return studentMapper.toUpdateStudent(sno);
	}

	@Override
	public int toUpdateSroominfo(int sno) {
		return studentMapper.toUpdateSroominfo(sno);
	}

	@Override
	public int toRemoveRoom(int sno,int sid) {
		return studentMapper.toRemoveRoom(sno,sid);
	}

	@Override
	public int changeCount(int sid) {
		return studentMapper.changeCount(sid);
	}



}
