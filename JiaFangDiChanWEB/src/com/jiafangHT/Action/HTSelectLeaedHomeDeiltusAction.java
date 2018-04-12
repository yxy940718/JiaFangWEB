package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectLeaedHomeDeiltusAction extends ActionSupport {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int homeid;
     private List<HomeDeiltus> homedeiltus=new ArrayList<HomeDeiltus>();
	

	public List<HomeDeiltus> getHomedeiltus() {
		return homedeiltus;
	}

	public int getHomeid() {
		return homeid;
	}

	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("-----------------------修改--"+homeid);
		UserDaoImpl u=new UserDaoImpl();
		homedeiltus=u.SelectLeaedHomeDeiltus(homeid);
		return SUCCESS;
	}
     
}
