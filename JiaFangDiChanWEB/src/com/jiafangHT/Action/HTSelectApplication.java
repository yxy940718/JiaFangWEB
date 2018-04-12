package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.applicationhome;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectApplication extends ActionSupport {
    private List<applicationhome> applicationhomelist=new ArrayList<applicationhome>();
    

	public List<applicationhome> getApplicationhomelist() {
		return applicationhomelist;
	}

	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		applicationhomelist=u.HTSelectApplication();
		return SUCCESS;
	}
    
}
