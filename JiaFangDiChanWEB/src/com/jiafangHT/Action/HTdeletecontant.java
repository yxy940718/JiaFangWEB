package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTdeletecontant extends ActionSupport {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private int did;

public int getDid() {
	return did;
}

public void setDid(int did) {
	this.did = did;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setCharacterEncoding("utf-8");
	boolean b=u.DeleteContact(did);
	if(b){
		response.getWriter().write("删除成功");
	}else{
		response.getWriter().write("删除失败");
	}
	return null;
}
  
}
