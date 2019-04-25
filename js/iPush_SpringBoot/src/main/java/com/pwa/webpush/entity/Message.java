package com.pwa.webpush.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TDV_MESSAGE")
public class Message {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="message_id")
	private String strMessageId;
	
	@Column(name="title")
	private String strTitle;
	
	@Column(name="content")
	private String strContent;
	
	@Column(name="url")
	private String strURL;
	
	@Column(name="vibrate")
	private String strVibrate;
	
	@Column(name="icon")
	private String strIcon;
	
	@Column(name="badge")
	private String strBadge;
	
	@Column(name="image")
	private String strImage;
	
	@Column(name="last_mod_user")
	private String strLastModUser;
	
	@Column(name="last_mod_time_dt")
	private Timestamp tsLastModTime;
	
	public String getStrTitle() {
		return strTitle;
	}
	public void setStrTitle(String strTitle) {
		this.strTitle = strTitle;
	}
	public String getStrContent() {
		return strContent;
	}
	public void setStrContent(String strContent) {
		this.strContent = strContent;
	}
	public String getStrURL() {
		return strURL;
	}
	public void setStrURL(String strURL) {
		this.strURL = strURL;
	}
	public String getStrVibrate() {
		return strVibrate;
	}
	public void setStrVibrate(String strVibrate) {
		this.strVibrate = strVibrate;
	}
	public String getStrIcon() {
		return strIcon;
	}
	public void setStrIcon(String strIcon) {
		this.strIcon = strIcon;
	}
	public String getStrBadge() {
		return strBadge;
	}
	public void setStrBadge(String strBadge) {
		this.strBadge = strBadge;
	}
	public String getStrImage() {
		return strImage;
	}
	public void setStrImage(String strImage) {
		this.strImage = strImage;
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
