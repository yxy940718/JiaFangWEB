package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTSetCustomer extends ActionSupport {
         private String customer;
	     private String years;
	     private String jianjie;
	     private String imgsrc;
	     private int customerid;
	     
		public int getCustomerid() {
			return customerid;
		}
		public void setCustomerid(int customerid) {
			this.customerid = customerid;
		}
		public String getCustomer() {
			return customer;
		}
		public void setCustomer(String customer) {
			this.customer = customer;
		}
		public String getYears() {
			return years;
		}
		public void setYears(String years) {
			this.years = years;
		}
		public String getJianjie() {
			return jianjie;
		}
		public void setJianjie(String jianjie) {
			this.jianjie = jianjie;
		}
		public String getImgsrc() {
			return imgsrc;
		}
		public void setImgsrc(String imgsrc) {
			this.imgsrc = imgsrc;
		}
		@Override
		public String execute() throws Exception {
			HttpServletResponse response=ServletActionContext.getResponse();
    		response.setCharacterEncoding("utf-8");
    		UserDaoImpl u=new UserDaoImpl();
    		u.HTsetCustomer(customer, jianjie, years, imgsrc);
    		u.DeleteCustomer(customerid);
    		return SUCCESS;
		}
	     
}
