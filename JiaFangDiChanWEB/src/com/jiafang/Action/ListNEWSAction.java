package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.News;
import com.opensymphony.xwork2.ActionSupport;

public class ListNEWSAction extends ActionSupport {
    private List<News> NEWSlist=new ArrayList<News>();

	public List<News> getNEWSlist() {
		return NEWSlist;
	}
    public int pageNewsNo;
    
	public int getPageNewsNo() {
		return pageNewsNo;
	}

	public void setPageNewsNo(int pageNewsNo) {
		this.pageNewsNo = pageNewsNo;
	}
	private List<HomeDeiltus> HomeSaleListnxq=new ArrayList<HomeDeiltus>();
	private List<HomeDeiltus> HomeLeaseListnxq=new ArrayList<HomeDeiltus>();

	public List<HomeDeiltus> getHomeSaleListnxq() {
		return HomeSaleListnxq;
	}

	public List<HomeDeiltus> getHomeLeaseListnxq() {
		return HomeLeaseListnxq;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();  
		UserDaoImpl u=new UserDaoImpl();
		int pagenCount=0;
		pagenCount=u.getPageNEWSCount();
		request.setAttribute("recordnewsCount",pagenCount);
		request.setAttribute("pagenewsNos", pageNewsNo);

		NEWSlist=u.getPageNEWS(pageNewsNo, 5);
		HomeLeaseListnxq=u.SelectHotHome("HotLease");
		HomeSaleListnxq=u.SelectHotHome("HotSale");
		return SUCCESS;
	}
    
}
