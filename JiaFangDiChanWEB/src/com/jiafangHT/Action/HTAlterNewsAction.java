package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class HTAlterNewsAction extends ActionSupport {
	private String	administratorid;
	  private String	username;
	  private String	phone;
	  private String	QQ;
	  private String	wechat;
	  private String	email;
	  private String	Introduction;
	  private String    pwd;
	  
	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		boolean b=u.AlertadminNews(administratorid, username, pwd, phone, QQ, wechat, email, Introduction);
	   if(b){
		   response.getWriter().write("修改成功，下次登录生效"); 
	   }else{
		   response.getWriter().write("修改失败！"); 
	   }
	   return null;
	}
	
	
	public String getAdministratorid() {
		return administratorid;
	}
	public void setAdministratorid(String administratorid) {
		this.administratorid = administratorid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntroduction() {
		return Introduction;
	}
	public void setIntroduction(String introduction) {
		Introduction = introduction;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
