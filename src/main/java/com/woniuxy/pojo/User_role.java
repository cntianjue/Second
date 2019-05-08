package com.woniuxy.pojo;

public class User_role {
private  String  account;
	private Integer rid;
   private  Role Role;


	public Role getRole() {
	return Role;
}

public void setRole(Role role) {
	Role = role;
}

	@Override
public String toString() {
	return "User_role [account=" + account + ", rid=" + rid + ", Role=" + Role + "]";
}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}


}
