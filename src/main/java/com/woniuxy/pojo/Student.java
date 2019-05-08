package com.woniuxy.pojo;

public class Student {

private String sname;
private String sex;
private String cname;
private String livetime;
private String img;
public String getLivetime() {
	return livetime;
}
public void setLivetime(String livetime) {
	this.livetime = livetime;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public void setSno(Integer sno) {
	this.sno = sno;
}
public void setSid(Integer sid) {
	this.sid = sid;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getSex() {
	return sex;
}


@Override
public String toString() {
	return "Student [sname=" + sname + ", sex=" + sex + ", cname=" + cname + ", livetime=" + livetime + ", img=" + img
			+ ", saddress=" + saddress + ", iphone=" + iphone + ", sno=" + sno + ", sid=" + sid + "]";
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getSaddress() {
	return saddress;
}
public void setSaddress(String saddress) {
	this.saddress = saddress;
}
public String getIphone() {
	return iphone;
}
public void setIphone(String iphone) {
	this.iphone = iphone;
}
private String saddress;
private String iphone;
private Integer sno;
private Integer sid;
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getSno() {
	return sno;
}
public void setSno(int sno) {
	this.sno = sno;
}

}
