package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class CollectionActin extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
    private int homeid;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
		System.out.println(homeid+"-----------------"+username);
		boolean b1=u.ExitCollectionHome(homeid,username);
		boolean b2=u.CollectionHome(homeid, username);
		if(b1){
			if(b2){
				response.getWriter().write("收藏成功");
				return null;
			}else{
				response.getWriter().write("网络错误，请稍后重试");
				return null;
			}
		}else{
			response.getWriter().write("已经收藏");
			return null;
		}
	}
	
    
}
