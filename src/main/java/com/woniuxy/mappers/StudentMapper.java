package com.woniuxy.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.woniuxy.pojo.Student;

public interface StudentMapper {
	//查询学生信息
		@Select({ "<script>", "SELECT img,student.sno as sno, dorminfo.sid as sid, livetime,student.sname as sname,sex,cname,saddress,iphone from class INNER JOIN student on student.cid=class.cid INNER JOIN roomifo \r\n" + 
				"on student.sname=roomifo.sname INNER JOIN dorminfo on roomifo.sid=dorminfo.sid   WHERE ",
	     	" ifs=1 and sif=1",
	     	"<when test='sname!=null'>",
			" and student.sname=#{sname}", 
			"</when>",
			"<when test='cname!=null'>",
			" and cname=#{cname}", 
			"</when>",
			"<when test='saddress!=null'>",
			" and saddress=#{saddress}", 
			"</when>",
			"<when test='iphone!=null'>",
			" and iphone=#{iphone}", 
			"</when>",
			"</script>" })
		public List<Student> selectStuInfoBySnameClassRoom1(@Param("sname")String sname,@Param("cname")String cname,@Param("saddress")String saddress,@Param("iphone")String iphone);

		@Select("SELECT img,student.sno as sno,dorminfo.sid as sid, student.sname as sname,sex,cname,saddress,iphone from class INNER JOIN student on student.cid=class.cid INNER JOIN roomifo \r\n" + 
				"on student.sname=roomifo.sname INNER JOIN dorminfo on roomifo.sid=dorminfo.sid where  ifs=1 and sif=1")
		public List<Student> selectStuInfoBySnameClassRoom();

        //学生入住
		@Insert("insert into student(sname,sex,iphone,cid,img) values(#{sname},#{sex},#{iphone},#{cid},#{img})")
		public void  addStudent(@Param("sname")String sname,@Param("sex")String sex,@Param("iphone")String iphone,@Param("cid")int cid,@Param("img")String img);
		public int addStu(String sclass,String room,String sname,String iphone,String sex, String createdTime,String img);
		
		
		@Select("select count from dorminfo where sid=#{sid}")
		public int selectCountBySid(@Param("sid")int sid);
		@Select("select have from dorminfo where sid=#{sid}")
		public int selectHaveBySid(@Param("sid")int sid);
		
		
		@Select("select cid from class where cname=#{cname}")
		public int selectCidByCname(@Param("cname")String cname);
		@Select("select sno from student where sname=#{sname}")
		public int selectSnoBySname(@Param("sname")String sname);
		@Select("select state from dorminfo  where sid=#{sid}")
		public int selectStateBySid(@Param("sid")int sid);
		@Select("select money from dorminfo where sid=#{sid} ")
		public String selectMoneyBySid(@Param("sid")int sid);
		@Select("select sid from dorminfo where saddress=#{saddress}")
		public int selectSidBySaddress(@Param("saddress")String saddress);
		
		@Insert("insert into roomifo(sname,sid,riphone,sno,livetime,money,state) values(#{sname},#{sid},#{iphone},#{sno},#{createdTime},#{money},#{state})")
		public void  addRoominfo(@Param("sname")String sname,@Param("sid")int sid,@Param("iphone")String iphone,@Param("sno")int sno,@Param("createdTime")String createdTime,@Param("money")String money,@Param("state")int state);
	
		@Update("update dorminfo set have=have+1 where sid=#{sid}")
		public void toUpdateHave(int sid);
		//学生换房
		@Update("update roomifo set sid=#{sid} where sname=#{sname}")
		public int changeRoom(@Param("sid")int sid,@Param("sname")String sname);
		@Update("update dorminfo set have=have+1  where sid=#{sid}")
		public int changeCountNew(int sid);
		@Update("update dorminfo set have=have-1 where saddress=#{saddress}")
		public int changeCountOld(String saddress);
		@Select ("select saddress from dorminfo inner join roomifo on roomifo.sid=dorminfo.sid where sname=#{sname}")
		public String selectSaddressBySname(String sname);
		
		
		//学生退房
		@Update("update student set sif=0  where sno=#{sno}")
		public int toUpdateStudent(int sno);
		@Update("update roomifo set ifs=0  where sno=#{sno}")
		public int toUpdateSroominfo(int sno);
		@Update("update dorminfo set have=have-1 where sid=#{sid}")
		public int changeCount(int sid);
		public int toRemoveRoom(int sno,int sid);
		
	
		
}
