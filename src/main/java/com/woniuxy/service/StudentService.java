package com.woniuxy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.woniuxy.mappers.ClassMapper;
import com.woniuxy.mappers.StudentMapper;
import com.woniuxy.pojo.Student;
@Service
public class StudentService implements StudentMapper {
	@Resource
	private StudentMapper studentDao;
	@Override
	public List<Student> selectStuInfoBySnameClassRoom1(String sname, String cname, String saddress, String iphone) {
		return studentDao.selectStuInfoBySnameClassRoom1(sname, cname, saddress, iphone);
	}

	@Override
	public List<Student> selectStuInfoBySnameClassRoom() {
		return studentDao.selectStuInfoBySnameClassRoom();
	}

	@Override
	public int addStu(String sclass, String room, String sname, String iphone, String sex, String createdTime,
			String img) {
		int sid=studentDao.selectSidBySaddress(room);
		int count=studentDao.selectCountBySid(sid);
		int have=studentDao.selectHaveBySid(sid);
		String money=studentDao.selectMoneyBySid(sid);
		int state=studentDao.selectStateBySid(sid);

		if(count >have) {
			int cid=studentDao.selectCidByCname(sclass);
			studentDao.addStudent(sname, sex, iphone, cid,img);
			int sno=studentDao.selectSnoBySname(sname);
			System.out.println(sno);
			studentDao.addRoominfo(sname, sid, iphone, sno, createdTime, money, state);
			studentDao.toUpdateHave(sid);
			return 1;
		}
		return 0;
	}
	
	@Override
	public int  changeRoom(int sid,String sname) {
		
		int count=studentDao.selectCountBySid(sid);
		int have=studentDao.selectHaveBySid(sid);
		if( count>have) {
			String saddress=studentDao.selectSaddressBySname(sname);
			System.out.println(saddress);
			studentDao.changeCountOld(saddress);
		studentDao.changeRoom(sid,sname);
		studentDao.changeCountNew(sid);
		return 1;
		}
		return 0;
	}

	@Override
	public void addStudent(String sname, String sex, String iphone, int cid,String img) {

	}

	@Override
	public int selectSnoBySname(String sname) {

		return studentDao.selectSnoBySname(sname);
	}

	@Override
	public int selectSidBySaddress(String saddress) {

		return studentDao.selectSidBySaddress(saddress);
	}

	@Override
	public void addRoominfo(String sname, int sid, String iphone, int sno, String createdTime, String money,
			int state) {
	
		
	}
	@Override
	public int selectStateBySid(int sid) {
	
		return 0;
	}

	@Override
	public String  selectMoneyBySid(int sid) {

		return null;
	}


	@Override
	public int selectCountBySid(int sid) {
		return 0;
	}

	@Override
	public int selectHaveBySid(int sid) {
		return 0;
	}


	@Override
	public int selectCidByCname(String cname) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public int changeCountNew(int sid) {
		return 0;
	}

	@Override
	public int changeCountOld(String saddress) {
		return 0;
	}

	@Override
	public String selectSaddressBySname(String sname) {
		return null;
	}

	@Override
	public void toUpdateHave(int sid) {
		
	}

	@Override
	public int toUpdateStudent(int sno) {
		return 0;
	}

	@Override
	public int toUpdateSroominfo(int sno) {
		return 0;
	}

	@Override
	public int toRemoveRoom(int sno,int sid) {
		System.out.println(")))))))))))))))))");
		studentDao.toUpdateStudent(sno);
		studentDao.toUpdateSroominfo(sno);
		System.out.println("_______________________");
		studentDao.changeCount(sid);
		return 0;
	}

	@Override
	public int changeCount(int sid) {
		return 0;
	}

	


}
