package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class collectionList extends ActionSupport {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pageNo;
     private String username;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo= pageNo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	} 
	public List<HomeDeiltus> pagecollectionHome=new ArrayList<HomeDeiltus>();

	private List<HomeDeiltus> collectionSaleListlxq=new ArrayList<HomeDeiltus>();
	private List<HomeDeiltus> collectionLeaseListlxq=new ArrayList<HomeDeiltus>();


	public List<HomeDeiltus> getPagecollectionHome() {
		return pagecollectionHome;
	}
	public List<HomeDeiltus> getCollectionSaleListlxq() {
		return collectionSaleListlxq;
	}
	public List<HomeDeiltus> getCollectionLeaseListlxq() {
		return collectionLeaseListlxq;
	}
	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest();  
		UserDaoImpl u=new UserDaoImpl();
		int pageCount=0;
		pageCount=u.getCollectionPageCount(username);
		if(pageNo>pageCount){
			pageNo=pageCount;
		}
		request.setAttribute("recordCount",pageCount);
		request.setAttribute("pageNos", pageNo);
		String sqlStatement=u.CollectionPageHome(pageNo, 6, username);
		pagecollectionHome=u.collectionHomeList(sqlStatement);
		collectionLeaseListlxq=u.SelectHotHome("HotLease");
		collectionSaleListlxq=u.SelectHotHome("HotSale");
		return SUCCESS;
		
	}
}
