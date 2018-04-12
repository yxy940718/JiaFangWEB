package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.News;
import com.opensymphony.xwork2.ActionSupport;

public class SelectNEWSDeiltus extends ActionSupport {
   private int NEWSid;
   private List<News> NEWSDEiltus=new ArrayList<News>();
	private List<HomeDeiltus> HomeSaleListNEWS=new ArrayList<HomeDeiltus>();
	private List<HomeDeiltus> HomeLeaseListNEWS=new ArrayList<HomeDeiltus>();
	
	
public List<HomeDeiltus> getHomeSaleListNEWS() {
		return HomeSaleListNEWS;
	}

	public List<HomeDeiltus> getHomeLeaseListNEWS() {
		return HomeLeaseListNEWS;
	}

public List<News> getNEWSDEiltus() {
	return NEWSDEiltus;
}

public int getNEWSid() {
	return NEWSid;
}

public void setNEWSid(int nEWSid) {
	NEWSid = nEWSid;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	NEWSDEiltus=u.HTSelectnewsList(NEWSid);
	HomeLeaseListNEWS=u.SelectHotHome("HotLease");
	HomeSaleListNEWS=u.SelectHotHome("HotSale");
	return SUCCESS;
}

   
}
