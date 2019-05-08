package com.woniuxy.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.woniuxy.pojo.Class;
import com.woniuxy.pojo.DormInfo;
import com.woniuxy.pojo.Fault;
import com.woniuxy.pojo.Role;
import com.woniuxy.pojo.Room;
import com.woniuxy.pojo.Student;
import com.woniuxy.pojo.User;
import com.woniuxy.pojo.User_role;

public interface UserMapper {
	//查询
	@Select("select * from user")
	public List<User> all();
	// 轮询
	@Select("select count(*) from fault")
	public int message();
	//注册
	@Insert("insert into user values(#{account},#{pwd})")
	public void addUser(User user);
	@Insert("insert into role(rname) values(#{role})")
	public void addrRole(User user);
	@Select("select rid from role order by rid desc limit 0,1")
	public int SelectRid();
	@Insert("insert into user_role(account,rid) values(#{account},#{rid})")
	public void addRoleUser(@Param("rid")int rid,@Param("account")String account);
	
	
	//条件查询
	@Select("select * from user where account=#{account}")
	public User selectByAccount(User user);
	//多对一查询用户角色
	@Select("select * from role where rid=#{rid}")
	public Role findRnameByRid(int rid);
	@Select("select * from  user_role where account=#{account}")
	@Results({
	
		@Result(column="account",property="account"),
		@Result(column="rid",property="rid"),
		@Result(column="rid",property="role",
	one=@One(select="com.woniuxy.mappers.UserMapper.findRnameByRid"
		)
		)
		}
		)
	public User_role findRoleByAcc(User_role user);
	//展示图片
	@Select("select img from student where iphone=#{iphone}")
	public String show(String iphone);
}
