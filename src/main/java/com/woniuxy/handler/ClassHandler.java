package com.woniuxy.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.woniuxy.mappers.ClassMapper;
import com.woniuxy.pojo.DataFZ;

@Controller
@RequestMapping("/class")
public class ClassHandler {
	@Resource
	private ClassMapper classService;

	public ClassMapper getClassService() {
		return classService;
	}

	public void setClassService(ClassMapper classService) {
		this.classService = classService;
	}

	// 展示班级信息
	@RequestMapping("/showclass")
	@ResponseBody
	public Object changroom() {

		System.out.println("进入班级展示");
		return DataFZ.conversion(classService.showClassInfo());
	}

	// 增加班级
	@RequestMapping("/addclass")
	@ResponseBody
	public Object addclass(String tname, String cname, String ctime) {
		System.out.println(tname + cname + ctime);
		System.out.println("进入增加班级");
		classService.addClass(cname, 0, ctime, tname);
		return DataFZ.conversion(classService.showClassInfo());
	}

	// 删除班级
	@RequestMapping("/deleteclass")
	@ResponseBody
	public Object delete(int cid) {
		System.out.println(cid);
		System.out.println("进入删除班级");
		if(classService.removeClass(cid)==1) {
			return DataFZ.conversion(classService.showClassInfo());
		}
		return null;
	}

}
