package com.woniuxy.pojo;

public class Role {
	private Integer rid;		
	private String rname;	



	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	@Override
	public String toString() {
		return "Role [rid=" + rid + ", rname=" + rname + "]";
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}

	
}
