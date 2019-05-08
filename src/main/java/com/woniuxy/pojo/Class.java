package com.woniuxy.pojo;

public class Class {
private String ctime;
private String cname ;
private String tname;
private int cid;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCtime() {
	return ctime;
}
public void setCtime(String ctime) {
	this.ctime = ctime;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}
@Override
public String toString() {
	return "Class [ctime=" + ctime + ", cname=" + cname + ", tname=" + tname + ", cid=" + cid + "]";
}


}
