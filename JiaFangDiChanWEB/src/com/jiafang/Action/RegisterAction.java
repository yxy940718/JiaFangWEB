package com.jiafang.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;



public class RegisterAction extends ActionSupport {
	
	 private String username;
     private String pwd;
     private String email;
	public String getUsername() {
		return username;
	}
	public String getPwd() {
		return pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
			String b=u.Register(username,pwd,email);
		
			if(b.equals("注册成功")){
				response.getWriter().write("注册成功!");
			}else{
				response.getWriter().write(b);
			}
			return null;
	}
   
}
