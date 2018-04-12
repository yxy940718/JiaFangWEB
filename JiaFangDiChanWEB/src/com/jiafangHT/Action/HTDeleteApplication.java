package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTDeleteApplication extends ActionSupport {
  private int homeid;

public int getHomeid() {
	return homeid;
}

public void setHomeid(int homeid) {
	this.homeid = homeid;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setCharacterEncoding("utf-8");
	boolean b=u.DeleteApplication(homeid);
	if(b){
		response.getWriter().write("删除成功");
	}else{
		response.getWriter().write("删除失败");
	}
	return null;
}
  
}
