package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.usercontact;
import com.opensymphony.xwork2.ActionSupport;

public class HTcontactDeiltus extends ActionSupport {
 private int cid;

public int getCid() {
	return cid;
}

public void setCid(int cid) {
	this.cid = cid;
}
public List<usercontact> contantdeiltus=new ArrayList<usercontact>();


public List<usercontact> getContantdeiltus() {
	return contantdeiltus;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	contantdeiltus=u.selectContact(cid);
	return SUCCESS;
}
 
}
