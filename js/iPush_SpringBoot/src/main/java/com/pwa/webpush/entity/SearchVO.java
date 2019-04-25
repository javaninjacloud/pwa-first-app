package com.pwa.webpush.entity;

import java.util.Date;

import javax.persistence.Entity;

public class SearchVO {

	private Date dtFromDate;
	private Date dtToDate;
	private String strOrderBy;

	public Date getDtFromDate() {
		return dtFromDate;
	}
	public void setDtFromDate(Date dtFromDate) {
		this.dtFromDate = dtFromDate;
	}
	public Date getDtToDate() {
		return dtToDate;
	}
	public void setDtToDate(Date dtToDate) {
		this.dtToDate = dtToDate;
	}
	public String getStrOrderBy() {
		return strOrderBy;
	}
	public void setStrOrderBy(String strOrderBy) {
		this.strOrderBy = strOrderBy;
	}
	
	
}
