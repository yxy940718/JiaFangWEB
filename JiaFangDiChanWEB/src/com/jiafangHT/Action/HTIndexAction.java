package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Count;
import com.opensymphony.xwork2.ActionSupport;

public class HTIndexAction extends ActionSupport {
	public List<Count> countlist=new ArrayList<Count>();

	public List<Count> getCountlist() {
		return countlist;
	}
	@Override
	public String execute() throws Exception {
		   UserDaoImpl u=new UserDaoImpl();
			Count c=new Count();
			 c.setNewscount(u.SelectNews());
			   c.setHomecount(u.SelectHouseXQ());
			   c.setContantcount(u.SelectContant());
			    countlist.add(c);
			    return SUCCESS;
	}

}
