package com.pwa.webpush.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TDV_SUBSCRIPTION")
public class Subscription {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="subscription_id")
	private String strSubscriptionId;
	
	@Column(name="member_id")
	private String strMemberId;
	
	@Column(name="endpoint")
	private String strEndpoint;
	
	@Column(name="key256")
	private String strKey256;
	
	@Column(name="auth")
	private String strAuth;
	
	@Column(name="last_mod_user")
	private String strLastModUser;
	
	@Column(name="last_mod_time_dt")
	private Timestamp tsLastModTime;

	public String getStrSubscriptionId() {
		return strSubscriptionId;
	}
	public void setStrSubscriptionId(String strSubscriptionId) {
		this.strSubscriptionId = strSubscriptionId;
	}
	public String getStrMemberId() {
		return strMemberId;
	}
	public void setStrMemberId(String strMemberId) {
		this.strMemberId = strMemberId;
	}
	public String getStrEndpoint() {
		return strEndpoint;
	}
	public void setStrEndpoint(String strEndpoint) {
		this.strEndpoint = strEndpoint;
	}
	public String getStrKey256() {
		return strKey256;
	}
	public void setStrKey256(String strKey256) {
		this.strKey256 = strKey256;
	}
	public String getStrAuth() {
		return strAuth;
	}
	public void setStrAuth(String strAuth) {
		this.strAuth = strAuth;
	}
	public String getStrLastModUser() {
		return strLastModUser;
	}
	public void setStrLastModUser(String strLastModUser) {
		this.strLastModUser = strLastModUser;
	}
	public Timestamp getTsLastModTime() {
		return tsLastModTime;
	}
	public void setTsLastModTime(Timestamp tsLastModTime) {
		this.tsLastModTime = tsLastModTime;
	}
	
}
