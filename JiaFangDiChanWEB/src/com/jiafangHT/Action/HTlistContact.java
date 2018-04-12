package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.usercontact;
import com.opensymphony.xwork2.ActionSupport;

public class HTlistContact extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private List<usercontact> listcontant=new ArrayList<usercontact>();

public List<usercontact> getListcontant() {
	return listcontant;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new  UserDaoImpl();
	listcontant=u.selectContact();
	return SUCCESS;
}

}
