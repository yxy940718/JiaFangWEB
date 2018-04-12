package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectLeixing extends ActionSupport {
    private int newhomeid;
    private String tablename;
	
	public int getNewhomeid() {
		return newhomeid;
	}
	public void setNewhomeid(int newhomeid) {
		this.newhomeid = newhomeid;
	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
		String leixing=u.SelectHomeleixing(newhomeid);
		System.out.println("---------------------------------"+leixing);
		if(leixing.equals("出租")&&tablename.equals("HotSale")){
			response.getWriter().write("您推荐的房源ID类型为出租");
		}else if(leixing.equals("出售")&&tablename.equals("HotLease")){
			response.getWriter().write("您推荐的房源ID类型为出售");}
		return null;
	}
    
}
