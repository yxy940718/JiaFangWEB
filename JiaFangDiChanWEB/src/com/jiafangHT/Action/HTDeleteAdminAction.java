package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;


public class HTDeleteAdminAction extends ActionSupport {
	private int adminid;
	

	public int getAdminid() {
		return adminid;
	}


	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}


	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		boolean b=u.DeleteAdmin(adminid);
	   if(b){
		   response.getWriter().write("删除成功"); 
	   }else{
		   response.getWriter().write("删除失败！"); 
	   }
	   return null;
	}
	
}
