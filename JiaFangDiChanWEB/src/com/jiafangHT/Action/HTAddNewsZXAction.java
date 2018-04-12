package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTAddNewsZXAction extends ActionSupport {
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
@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setCharacterEncoding("utf-8");
	boolean b=u.HTaddNews(title, news, photo, personid,context);
	if(b){
		response.getWriter().write("添加成功");
	}else{
		response.getWriter().write("添加失败");
	}
	return null;
}
   
}
