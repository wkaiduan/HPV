package com.tegen.entity;

import java.sql.Date;

public class HPVResult {

	private int id;
	private String result;
	private Date Createtime;
	private String LXNumber;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Date getCreatetime() {
		return Createtime;
	}
	public void setCreatetime(Date createtime) {
		Createtime = createtime;
	}
	public String getLXNumber() {
		return LXNumber;
	}
	public void setLXNumber(String lXNumber) {
		LXNumber = lXNumber;
	}
	
}
