package com.woniuxy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.woniuxy.mappers.DormMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Room;
@Service
public class DormService  implements DormMapper {
	@Resource
	private DormMapper dormDao;
	@Override
	public List<DormInfo> selectDormBySidByStudent(int sid) {
		return dormDao.selectDormBySidByStudent(sid);
	}

	@Override
	public List<Room> selectDormAll(int sid) {
		return dormDao.selectDormAll(sid);
	}

	@Override
	public List<DormInfo> selectDorm(String saddress, int state, String can, String type) {
		return dormDao.selectDorm(saddress, state, can, type);
	}

	@Override
	public List<DormInfo> dormall(int sid) {
		return dormDao.dormall(sid);
	}

	@Override
	public List<Fault> selectfault(int sid) {
		return dormDao.selectfault(sid);
	}

	@Override
	public List<DormInfo> dorminfo() {
		return dormDao.dorminfo();
	}

	@Override
	public void addfalut(String content, String htime, int sid) {
		dormDao.addfalut(content, htime, sid);
		System.out.println(sid);
		dormDao.toUpdateStateNull(sid);
		
	}

	@Override
	public void addDorm(String saddress, int count, String type, String money, String rtype, String paytype,
			String master, String phone, int state, String rtime) {
		dormDao.addDorm(saddress, count, type, money, rtype, paytype, master, phone, state, rtime);
		
	}

	@Override
	public int  toRemoveDorm(int sid) {
		int have=dormDao.selectHaveBySid(sid);
		if(have==0) {
			dormDao.toRemoveDorm(sid);
			return 1;
		}
		return 0;
	}

	@Override
	public int selectHaveBySid(int sid) {
		
		return 0;
	}

	@Override
	public void toHandle(int hid) {
		  dormDao.toHandle(hid);
	}

	@Override
	public int toSeleteCount(int sid) {
		return dormDao.toSeleteCount(sid);
	}

	@Override
	public void toUpdateState(int sid) {
		dormDao.toUpdateState(sid);
	}

	@Override
	public void toUpdateStateNull(int sid) {
	  dormDao.toUpdateStateNull(sid);
		
	}

}
