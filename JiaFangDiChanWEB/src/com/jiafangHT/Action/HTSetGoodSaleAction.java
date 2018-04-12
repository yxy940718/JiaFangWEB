package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class HTSetGoodSaleAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private int administratorid;
        private int newadministratorid;
        
    	public int getAdministratorid() {
			return administratorid;
		}

		public void setAdministratorid(int administratorid) {
			this.administratorid = administratorid;
		}

		public int getNewadministratorid() {
			return newadministratorid;
		}

		public void setNewadministratorid(int newadministratorid) {
			this.newadministratorid = newadministratorid;
		}

		public String execute() throws Exception {
    		HttpServletResponse response=ServletActionContext.getResponse();
    		response.setCharacterEncoding("utf-8");
    		UserDaoImpl u=new UserDaoImpl();
    		List<Person> list=new ArrayList<Person>();
    		list=u.SelectAdmin(newadministratorid);
    		u.AddGoodadminNews(Integer.parseInt(list.get(0).getAdministratorid()), list.get(0).getUsername(),list.get(0).getPwd(), list.get(0).getPhone(), list.get(0).getQQ(), list.get(0).getWechat(),list.get(0).getEmail(), list.get(0).getIntroduction(),list.get(0).getPhotosrc());
    		u.DeleteGoodSale(administratorid);
    		return SUCCESS;
		}
}
