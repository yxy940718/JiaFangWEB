package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class PageLIstAction extends ActionSupport {
  private int pageNo;

public int getPageNo() {
	return pageNo;
}

public void setPageNo(int pageNo) {
	this.pageNo = pageNo;
}
public List<HomeDeiltus> pagelistHome=new ArrayList<HomeDeiltus>();

private List<HomeDeiltus> HomeSaleListlxq=new ArrayList<HomeDeiltus>();
private List<HomeDeiltus> HomeLeaseListlxq=new ArrayList<HomeDeiltus>();

public List<HomeDeiltus> getHomeSaleListlxq() {
	return HomeSaleListlxq;
}

public List<HomeDeiltus> getHomeLeaseListlxq() {
	return HomeLeaseListlxq;
}

public List<HomeDeiltus> getPagelistHome() {
	return pagelistHome;
}

@Override
public String execute() throws Exception {
	
	HttpServletRequest request = ServletActionContext.getRequest();  
	UserDaoImpl u=new UserDaoImpl();
	int pageCount=0;
	pageCount=u.getPageCount();
	if(pageNo>pageCount){
		pageNo=pageCount;
	}
	request.setAttribute("recordCount",pageCount);
	request.setAttribute("pageNos", pageNo);
	
	pagelistHome=u.getPageHome(pageNo, 6);
	HomeLeaseListlxq=u.SelectHotHome("HotLease");
	HomeSaleListlxq=u.SelectHotHome("HotSale");
	return SUCCESS;
	
}
  
}
