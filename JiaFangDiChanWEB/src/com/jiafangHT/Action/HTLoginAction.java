package com.jiafangHT.Action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Count;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;





public class HTLoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L; 
    private String username;
    private String pwd;
    private Person person;
	
	public Person getPerson() {
		return person;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
   
	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		System.out.println(pwd+"------------------管理员登录-----------------");
		boolean b=u.HTLogin(username, pwd);
		
	   if(b){
		   int id=u.selectid(username);
		   String user=u.selectname(username);
		   ServletActionContext.getRequest().getSession(true).setAttribute("id", id);
		   ServletActionContext.getRequest().getSession(true).setAttribute("name", user);
		   ServletActionContext.getRequest().getSession(true).setAttribute("status", "success");//登录成功标识
		    person=new Person();
			person=u.personDetails(id);
			ServletActionContext.getRequest().getSession(true).setAttribute("sta001tus",person);
			
		   response.getWriter().write("登录成功"); 
	   }else{
		   response.getWriter().write("账号或密码错误！"); 
	   }
	   
	   
	   return null;
	}

	
}
