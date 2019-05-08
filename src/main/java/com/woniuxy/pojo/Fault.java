package com.woniuxy.pojo;

public class Fault {
private int hid;
private String content;
private String htime;
private String handle;
public int getHid() {
	return hid;
}
public void setHid(int hid) {
	this.hid = hid;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getHtime() {
	return htime;
}
public void setHtime(String htime) {
	this.htime = htime;
}
@Override
public String toString() {
	return "Fault [hid=" + hid + ", content=" + content + ", htime=" + htime + ", handle=" + handle + "]";
}
public String getHandle() {
	return handle;
}
public void setHandle(String handle) {
	this.handle = handle;
}




}
