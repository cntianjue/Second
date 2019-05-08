package com.woniuxy.pojo;

public class Room {
private String sname;
private String riphone;
private int rid;
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getLivetime() {
	return livetime;
}
public void setLivetime(String livetime) {
	this.livetime = livetime;
}
private String livetime;
public String getName() {
	return sname;
}
public void setName(String name) {
	this.sname = name;
}
public String getRiphone() {
	return riphone;
}
@Override
public String toString() {
	return "Room [name=" + sname + ", riphone=" + riphone + ", rid=" + rid + "]";
}
public void setRiphone(String riphone) {
	this.riphone = riphone;
}
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
}
