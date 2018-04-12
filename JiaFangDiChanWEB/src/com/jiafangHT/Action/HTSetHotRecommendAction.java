package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class HTSetHotRecommendAction extends ActionSupport {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
		if(tablename.equals("HotSale")){
		    	 List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
		    	 list=u.SelectHomeDeiltus(newhomeid);
		    	u.s_AddHome("HotSale",newhomeid,list.get(0).getLeibie(), list.get(0).getHomename(), list.get(0).getWhere(), list.get(0).getShi(), list.get(0).getTing(), list.get(0).getWei(), list.get(0).getChu(), list.get(0).getChe(), list.get(0).getYang(),list.get(0).getNiandai(), list.get(0).getMianji(), list.get(0).getZhuangxiu(), list.get(0).getChaoxiang(), list.get(0).getHomeleixing(),list.get(0).getPhoto(), list.get(0).getAdministratorid(),list.get(0).getPrice(),list.get(0).getLouceng(),list.get(0).getXiaoqu(),list.get(0).getZhoubian(),list.get(0).getJiaotong());
		        u.s_DeleteHome(homeid, "HotSale");
		}else{
		    	 List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
		    	list=u.SelectHomeDeiltus(newhomeid);
		    	u.s_AddHome("HotLease",newhomeid,list.get(0).getLeibie(), list.get(0).getHomename(), list.get(0).getWhere(), list.get(0).getShi(), list.get(0).getTing(), list.get(0).getWei(), list.get(0).getChu(), list.get(0).getChe(), list.get(0).getYang(),list.get(0).getNiandai(), list.get(0).getMianji(), list.get(0).getZhuangxiu(), list.get(0).getChaoxiang(), list.get(0).getHomeleixing(),list.get(0).getPhoto(), list.get(0).getAdministratorid(),list.get(0).getPrice(),list.get(0).getLouceng(),list.get(0).getXiaoqu(),list.get(0).getZhoubian(),list.get(0).getJiaotong());
		    	u.s_DeleteHome(homeid, "HotLease");
		}
		return SUCCESS;
	}
	private String tablename;
	private int homeid;
	private int newhomeid;
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	public int getNewhomeid() {
		return newhomeid;
	}
	public void setNewhomeid(int newhomeid) {
		this.newhomeid = newhomeid;
	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	
  
}
