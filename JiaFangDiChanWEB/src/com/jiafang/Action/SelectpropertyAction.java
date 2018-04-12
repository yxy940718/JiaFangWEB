package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class SelectpropertyAction extends ActionSupport {
	private int homeid;
    private List<HomeDeiltus> homedeiltusList=new ArrayList<HomeDeiltus>();
	public List<HomeDeiltus> getHomedeiltusList() {
		return homedeiltusList;
	}

	public int getHomeid() {
		return homeid;
	}

	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
    public List<Person> personListxq=new ArrayList<Person>();
    
	public List<Person> getPersonListxq() {
		return personListxq;
	}
	 private List<HomeDeiltus> HomeSaleListxq=new ArrayList<HomeDeiltus>();
	 private List<HomeDeiltus> HomeLeaseListxq=new ArrayList<HomeDeiltus>();
	public List<HomeDeiltus> getHomeSaleListxq() {
		return HomeSaleListxq;
	}


	public List<HomeDeiltus> getHomeLeaseListxq() {
		return HomeLeaseListxq;
	}
	
	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		homedeiltusList=u.SelectHomeDeiltus(homeid);
		//System.out.println();
		personListxq=u.SelectAdmin(homedeiltusList.get(0).getAdministratorid());
		HomeLeaseListxq=u.SelectHotHome("HotLease");
		HomeSaleListxq=u.SelectHotHome("HotSale");
		return SUCCESS;
	}
}
