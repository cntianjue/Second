package com.woniuxy.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.woniuxy.pojo.Class;

public interface ClassMapper {
	//管理员-查询班级信息
	@Select("SELECT * from class INNER JOIN teacher on class.tid=teacher.tid")
	public List<Class> showClassInfo();
	
	//增加开班信息
	@Insert("insert into teacher(tname) values(#{tname})")
	public void addTeacher(String  tname);
	@Select("SELECT tid from teacher where tname=#{tname}")
	public int  selectTidByTname(String  tname);
	@Insert("insert into class(cname,tid,ctime) values(#{cname},#{tid},#{ctime})")
	public void addClass(@Param("cname")String  cname,@Param("tid")int tid,@Param("ctime")String ctime,String tname);
	
	
	//删除开班信息
	@Delete("delete from class where cid=#{cid}")
	public int removeClass(int cid);
	@Select("select count(*) from student where cid=#{cid}")
	public int selectCountBycid(int cid);
	
}
