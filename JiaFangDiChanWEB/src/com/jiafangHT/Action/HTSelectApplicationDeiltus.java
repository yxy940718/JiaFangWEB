package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.applicationhome;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectApplicationDeiltus extends ActionSupport {
   public int homeid;

public int getHomeid() {
	return homeid;
}

public void setHomeid(int homeid) {
	this.homeid = homeid;
}
   public List<applicationhome> applicationdeiltuslist=new ArrayList<applicationhome>();

public List<applicationhome> getApplicationdeiltuslist() {
	return applicationdeiltuslist;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	applicationdeiltuslist=u.HTSelectApplication(homeid);
	return SUCCESS;
}
   
}
