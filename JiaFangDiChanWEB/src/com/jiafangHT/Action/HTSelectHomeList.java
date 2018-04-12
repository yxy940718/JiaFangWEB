package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectHomeList extends ActionSupport {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<HomeDeiltus> homelist=new ArrayList<HomeDeiltus>();

	public List<HomeDeiltus> getHomelist() {
		return homelist;
	}

	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		homelist=u.SelectHome();
		return SUCCESS;
	}
     
}
