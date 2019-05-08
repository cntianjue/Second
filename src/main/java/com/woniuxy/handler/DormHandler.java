package com.woniuxy.handler;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.woniuxy.mappers.DormMapper;
import com.woniuxy.mappers.UserMapper;
import com.woniuxy.pojo.Class;
import com.woniuxy.pojo.DataFZ;
import com.woniuxy.pojo.DataFZNoPageInfo;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Role;
import com.woniuxy.pojo.Room;
import com.woniuxy.pojo.Student;
import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;

@Controller
@RequestMapping("/dorm")
public class DormHandler {
	public DormMapper getDormService() {
		return dormService;
	}

	public void setDormService(DormMapper dormService) {
		this.dormService = dormService;
	}

	@Resource
	private DormMapper dormService;

	// 宿舍详情
	@RequestMapping("/roompeople")
	@ResponseBody
	public Object roompeople(int sid) {
		System.out.println("进入宿舍房间详情");
		return DataFZ.conversion(dormService.selectDormAll(sid));
	}

	// 学生查询宿舍
	@RequestMapping("/test")
	@ResponseBody
	public Object test(int id) {
		System.out.println("进入学生查询宿舍");
		return DataFZ.conversion(dormService.selectDormBySidByStudent(id));
	}

	// 增加故障信息
	@RequestMapping("/addfault")
	@ResponseBody
	public Object addfault(String htime, String content, int sid) {
		System.out.println(htime + content);
		System.out.println(sid);
		System.out.println("进入增加故障信息");
		dormService.addfalut(content, htime, sid);
	
		return DataFZ.conversion(dormService.selectfault(sid));
	}

	// 维修
	@RequestMapping("/removefault")
	@ResponseBody
	public Object removefault(int hid, int sid) {
		System.out.println(hid);
		System.out.println("进入维修");
		dormService.toHandle(hid);
		int count=dormService.toSeleteCount(sid);
		if(count==0) {
			dormService.toUpdateState(sid);
		}
		return DataFZ.conversion(dormService.selectfault(sid));
	}

	// 故障展示
	@RequestMapping("/selectfault")
	@ResponseBody
	public Object selectfault(int sid) {
		System.out.println(sid);
		System.out.println("进入故障展示");

		return DataFZ.conversion(dormService.selectfault(sid));
	}

	// 管理宿舍查询
	@RequestMapping("/dorminfo")
	@ResponseBody
	public Object selectDrom(String saddress, int state, String can, String type) {
		System.out.println("进入管理员查询宿舍");
		if (saddress != null || state != 0 || can != null || type != null) {

			System.out.println(saddress + state + can + type);

			if (saddress == "") {
				saddress = null;

			}
		    
			if (can == "") {
				can = null;
			}
			if (type == "") {
				type = null;
			}
       System.out.println(can+"__________-");
			return DataFZ.conversion(dormService.selectDorm(saddress, state, can, type));
		} else {
			return DataFZ.conversion(dormService.dorminfo());
		}

	}

	// 管理宿舍详情查询
	@RequestMapping("/dormall")
	@ResponseBody
	public Object dormall(int sid) {
		System.out.println("进入管理宿舍详情查询");
		System.out.println(sid);

		return DataFZNoPageInfo.conversion(dormService.dormall(sid));
	}

	// 管理删除宿舍
	@RequestMapping("/removedorm")
	@ResponseBody
	public Object removedorm(int sid) {
		System.out.println(sid);
		System.out.println("进入删除宿舍");
		int count = dormService.toRemoveDorm(sid);
		if (count == 1) {
			return DataFZ.conversion(dormService.dorminfo());
		}
		return null;
	}

	// 管理员增加房屋信息
	@RequestMapping("/addroom")
	@ResponseBody
	public Object addroom(String saddress, int count, String type, String money, String rtype, String paytype,
			String master, String phone, int state, String rtime) {

		System.out.println(saddress);
		System.out.println(count);
		System.out.println(type);
		System.out.println(money);
		System.out.println(rtype);
		System.out.println(paytype);
		System.out.println(master);
		System.out.println(phone);
		System.out.println(state);
		System.out.println(rtime);
		System.out.println("进入增加房屋信息");

		dormService.addDorm(saddress, count, type, money, rtype, paytype, master, phone, state, rtime);
		return DataFZ.conversion(dormService.dorminfo());
	}

}
