package com.jifangHT.domain;

import com.opensymphony.xwork2.ActionSupport;

public class News extends ActionSupport {
	private int newsid;
  public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
private String title;
  private String news;
  private String photo;
  private int personid;
  private String context;
public String getContext() {
	return context;
}
public void setContext(String context) {
	this.context = context;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getNews() {
	return news;
}
public void setNews(String news) {
	this.news = news;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public int getPersonid() {
	return personid;
}
public void setPersonid(int personid) {
	this.personid = personid;
}
  
}
