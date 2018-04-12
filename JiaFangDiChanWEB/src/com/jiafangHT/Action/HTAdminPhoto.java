package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTAdminPhoto extends ActionSupport {
    private String photosrc;
    private int personid;
    
    
	public int getPersonid() {
		return personid;
	}

	public void setPersonid(int personid) {
		this.personid = personid;
	}

	public String getPhotosrc() {
		return photosrc;
	}

	public void setPhotosrc(String photosrc) {
		this.photosrc = photosrc;
	}

	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		System.out.println("-----------------------------"+photosrc);
		boolean b=u.HTAdminPhoto(photosrc, personid);
		if(b){
			response.getWriter().write("添加成功,下次登录生效");
		}else{
			response.getWriter().write("网络错误");
		}
		return null;
	}
	
}
