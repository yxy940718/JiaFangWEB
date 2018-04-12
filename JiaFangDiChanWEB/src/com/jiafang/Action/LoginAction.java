package com.jiafang.Action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;



public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L; 
    private String username;
    private String password;
    
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String result;
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		boolean b=u.Login(username, password);
	   if(b){
		   ServletActionContext.getRequest().getSession(true).setAttribute("username", username);
		   ServletActionContext.getRequest().getSession(true).setAttribute("statusid", "success");//登录成功标识
         
	   }else{
		   response.getWriter().write("账号或密码错误！"); 
	   }
	   
	   System.out.println(result);
	   return null;
	}
	
}
