package com.jiafangHT.Action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class HTLoginOUT extends ActionSupport {

	@Override
	public String execute() throws Exception {
		ServletActionContext.getRequest().getSession(true).setAttribute("status", "");
		return SUCCESS;
	}

}
