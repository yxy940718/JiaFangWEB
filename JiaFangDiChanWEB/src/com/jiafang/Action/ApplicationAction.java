package com.jiafang.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ApplicationAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String  leibie;
	private String  home;
	private String  where;
	private String  shi;
	private String  wei;
	private String  ting;
	private String  zhuangxiu;
	private String  user;
	private String  phone;
	private String  qq;
    
	
	public String getLeibie() {
		return leibie;
	}


	public void setLeibie(String leibie) {
		this.leibie = leibie;
	}


	public String getHome() {
		return home;
	}


	public void setHome(String home) {
		this.home = home;
	}


	public String getWhere() {
		return where;
	}


	public void setWhere(String where) {
		this.where = where;
	}


	public String getShi() {
		return shi;
	}


	public void setShi(String shi) {
		this.shi = shi;
	}


	public String getWei() {
		return wei;
	}


	public void setWei(String wei) {
		this.wei = wei;
	}


	public String getTing() {
		return ting;
	}


	public void setTing(String ting) {
		this.ting = ting;
	}


	public String getZhuangxiu() {
		return zhuangxiu;
	}


	public void setZhuangxiu(String zhuangxiu) {
		this.zhuangxiu = zhuangxiu;
	}


	public String getUser() {
		return user;
	}


	public void setUser(String user) {
		this.user = user;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getQq() {
		return qq;
	}


	public void setQq(String qq) {
		this.qq = qq;
	}


	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
		boolean b=u.SaveHouseXQ(leibie, home, where,shi, ting, wei, zhuangxiu,user, phone, qq);
		if(b){
			 response.getWriter().write("提交成功"); 
		}else{
			response.getWriter().write("网络错误，稍后重试！！！");
		}
		return null;
	}
   
}
