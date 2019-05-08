package com.woniuxy.handler;

import javax.annotation.Resource;

import org.aspectj.apache.bcel.generic.RET;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.woniuxy.mappers.DormMapper;
import com.woniuxy.mappers.StudentMapper;
import com.woniuxy.pojo.DataFZ;
import com.woniuxy.pojo.DataFZNoPage;

@Controller
@RequestMapping("/student")
public class StudentHandler {
	public StudentMapper getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentMapper studentService) {
		this.studentService = studentService;
	}

	@Resource
	private StudentMapper studentService;

	 //学生信息展示
    @RequestMapping("/studentInfoShow")
	@ResponseBody
	public 	Object studentInfoShow(String sname,String clas,String room,String iphone){

		System.out.println("进入学生信息展示");
		System.out.println(sname +clas+room);
		if(sname!=null|| clas!=null|| room!=null|| iphone!=null) {

			System.out.println(sname +clas+room +iphone);
			
			if(iphone=="") {
				iphone=null;
				
				}
			if(sname=="") {
				sname=null;
			}
			if(clas=="") {
				clas=null;
			}
			if(room=="") {
			room=null;
			}
			if(iphone!=null) {
				System.out.println("进入");
				 return DataFZNoPage.conversion(studentService.selectStuInfoBySnameClassRoom1(sname, clas, room,iphone));
			}
			System.out.println("测试");
        
			 return DataFZ.conversion(studentService.selectStuInfoBySnameClassRoom1(sname, clas, room,iphone));
		}else{
			return DataFZ.conversion(studentService.selectStuInfoBySnameClassRoom());
		}
		}
	//新增学生
	@RequestMapping("/addstudent")
	@ResponseBody
	public 	Object  addstudent(String sclass,String room,String name,String number,String sex,String createdTime,String img){
		System.out.println("进入学生新增");
	 int option=studentService.addStu(sclass, room, name, number, sex, createdTime, img);
	 if(option==1) {
	 return DataFZ.conversion(studentService.selectStuInfoBySnameClassRoom());
	}
	return 0;
	}
	//换房
	@RequestMapping("/changroom")
	@ResponseBody
	public 	Object changroom(String address,String sname){
		System.out.println(address+ sname);
		System.out.println("进入换房");
	     int a=studentService.changeRoom(studentService.selectSidBySaddress(address),sname);
		if(a==1) {
			 return DataFZ.conversion(studentService.selectStuInfoBySnameClassRoom());
		}
		
		return null;
	}
	
	//退房
		@RequestMapping("/remove")
		@ResponseBody
		public 	Object remove(int sno,int sid){
			System.out.println("进入退房");
			
		   studentService.toRemoveRoom(sno, sid);
			  return DataFZ.conversion(studentService.selectStuInfoBySnameClassRoom());
		}
	
	
}
