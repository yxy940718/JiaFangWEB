package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class SerachListAction extends ActionSupport {
	 
        private String valuename;
        private int minprice;
        private int maxprice;
        private String leibie;
        
		public String getValuename() {
			return valuename;
		}

		public void setValuename(String valuename) {
			this.valuename = valuename;
		}

		public int getMinprice() {
			return minprice;
		}

		public void setMinprice(int minprice) {
			this.minprice = minprice;
		}

		public int getMaxprice() {
			return maxprice;
		}

		public void setMaxprice(int maxprice) {
			this.maxprice = maxprice;
		}

		public String getLeibie() {
			return leibie;
		}

		public void setLeibie(String leibie) {
			this.leibie = leibie;
		}
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
			pageCount=u.getSerachPageCount(valuename, leibie, minprice, maxprice);
			if(pageCount==0){
			pagelistHome=u.getPageHome(pageNo, 6);
			pageCount=u.getPageCount();
			request.setAttribute("recordCount",pageCount);
			request.setAttribute("pageNos", pageNo);
			}else{
				request.setAttribute("recordCount",pageCount);
				request.setAttribute("pageNos", pageNo);
				pagelistHome=u.SerachPageHome(pageNo, 6, valuename, leibie, minprice, maxprice);
			}
			//pagelistHome=u.getPageHome(pageNo, 6);
			HomeLeaseListlxq=u.SelectHotHome("HotLease");
			HomeSaleListlxq=u.SelectHotHome("HotSale");
			return SUCCESS;
			
}
}
