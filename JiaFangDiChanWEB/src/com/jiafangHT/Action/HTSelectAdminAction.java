package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectAdminAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Person> userlist=new ArrayList<Person>();
    
	public List<Person> getUserlist() {
		return userlist;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("--------------查询列表-------------");
		UserDaoImpl u=new UserDaoImpl();
		userlist=u.SelectAdmin();
		return SUCCESS;
	}
   
}
