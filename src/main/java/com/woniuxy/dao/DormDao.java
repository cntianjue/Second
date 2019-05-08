package com.woniuxy.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.woniuxy.mappers.DormMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Room;

@Repository
public class DormDao  implements DormMapper{
	@Resource
	private DormMapper dormMapper;
	@Override
	public List<DormInfo> selectDormBySidByStudent(int sid) {
		return dormMapper.selectDormBySidByStudent(sid);
	}

	@Override
	public List<Room> selectDormAll(int sid) {
		return dormMapper.selectDormAll(sid);
	}

	@Override
	public List<DormInfo> selectDorm(String saddress, int state, String can, String type) {
		return dormMapper.selectDorm(saddress, state, can, type);
	}

	@Override
	public List<DormInfo> dormall(int sid) {
		return dormMapper.dormall(sid);
	}

	@Override
	public List<Fault> selectfault(int sid) {
		return dormMapper.selectfault(sid);
	}

	@Override
	public List<DormInfo> dorminfo() {
		return dormMapper.dorminfo();
	}

	@Override
	public void addfalut(String content, String htime, int sid) {
		dormMapper.addfalut(content, htime, sid);
		
	}

	@Override
	public void addDorm(String saddress, int count, String type, String money, String rtype, String paytype,
			String master, String phone, int state, String rtime) {
		dormMapper.addDorm(saddress, count, type, money, rtype, paytype, master, phone, state, rtime);
		
	}

	@Override
	public int  toRemoveDorm(int sid) {
		return dormMapper.toRemoveDorm(sid);
		
	}

	@Override
	public int selectHaveBySid(int sid) {
		return dormMapper.selectHaveBySid(sid);
	}

	@Override
	public void toHandle(int hid) {
		dormMapper.toHandle(hid);
	}

	@Override
	public int toSeleteCount(int sid) {
		return dormMapper.toSeleteCount(sid);
		
	}

	@Override
	public void toUpdateState(int sid) {
       dormMapper.toUpdateState(sid);
		
	}

	@Override
	public void toUpdateStateNull(int sid) {
	dormMapper.toUpdateStateNull(sid);
		
	}

}
