package com.jiafang.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Customer;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
     private List<HomeDeiltus> HomeList=new ArrayList<HomeDeiltus>();
     private List<Customer> Hcustomerlist=new ArrayList<Customer>();
     private List<Person> Hgoodsalelist=new ArrayList<Person>();
     
	public List<Customer> getHcustomerlist() {
		return Hcustomerlist;
	}



	public List<Person> getHgoodsalelist() {
		return Hgoodsalelist;
	}



	public List<HomeDeiltus> getHomeList() {
		return HomeList;
	}



	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HomeList=u.SelectHome();
		Hcustomerlist=u.HTSelectCustomer();
		Hgoodsalelist=u.SelectGoodSale();
		return SUCCESS;
	}
     
}
