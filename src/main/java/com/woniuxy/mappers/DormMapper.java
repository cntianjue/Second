package com.woniuxy.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Room;

public interface DormMapper {
	    //学生-查询宿舍
		@Select("select * from dorminfo where sid=#{sid}")
		public List<DormInfo> selectDormBySidByStudent(int sid);
	    //学生-宿舍住宿详情
		@Select("select * from roomifo where sid=#{sid}")
		public List<Room> selectDormAll(int sid);
		
		//管理员-查询宿舍信息
		@Select({ "<script>", "SELECT * from dorminfo ",
	     	" where dif=1",
	     	"<when test='state==2'>",
			" and state=''", 
			"</when>",
			"<when test='state==1'>",
			" and state='1'", 
			"</when>",
			"<when test='can!=null'>",
			" and count>have", 
			"</when>",
			"<when test='saddress!=null'>",
			" and saddress=#{saddress}", 
			"</when>",
			"<when test='type!=null'>",
			" and type=#{type}", 
			"</when>",
			"</script>" })
		public List<DormInfo> selectDorm(@Param("saddress")String saddress,@Param("state")int state,@Param("can")String can,@Param("type")String type);
		//管理员-宿舍信息详情
		@Select("SELECT * from roomifo inner join dorminfo on roomifo.sid=dorminfo.sid where roomifo.sid=#{sid} ")
		public List<DormInfo> dormall(int sid);
		//管理员-故障信息
			@Select("SELECT * from fault where sid=#{sid} ")
			public List<Fault> selectfault(int sid);
			  @Update("update dorminfo set state='' where sid=#{sid}")
		       public void toUpdateStateNull(int sid);
		//管理员-查询宿舍信息
		@Select("SELECT * from dorminfo where dif=1")
		public List<DormInfo> dorminfo();
       @Insert("insert fault(content,htime,handle,sid) values(#{content},#{htime},'未解决',#{sid})")
       public void addfalut(@Param("content")String content,@Param("htime")String htime,@Param("sid")int sid);
       
       
       
       //增加房屋
       
       @Insert("insert into dorminfo(saddress,count,master,phone,type,rtype,paytype,rtime,money,state) values(#{saddress},#{count},#{master},#{phone},#{type},#{rtype},#{paytype},#{rtime},#{money},#{state})")
       public void  addDorm(@Param("saddress")String saddress,@Param("count")int count,@Param("type")String type,@Param("money")String money,@Param("rtype")String rtype,@Param("paytype")String paytype,@Param("master")String master,@Param("phone")String phone,@Param("state")int state,@Param("rtime")String rtime);
 

       //删除房间
       @Update("update dorminfo set dif=0 where sid=#{sid}")
       public int toRemoveDorm(int sid);

       @Select ("select have from dorminfo where sid=#{sid}")
       public int selectHaveBySid(int sid);
       
       
       //维修
       @Update("update fault set handle='已解决' where hid=#{hid}")
       public void toHandle(int hid);
       @Select("select count(*) from  fault  where handle='未解决' and sid=#{sid} ")
       public int  toSeleteCount(int sid);
       @Update("update dorminfo set state=1 where sid=#{sid}")
       public void toUpdateState(int sid);
       
       
}
