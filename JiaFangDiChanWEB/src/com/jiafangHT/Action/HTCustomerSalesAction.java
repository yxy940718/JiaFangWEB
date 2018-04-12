package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Customer;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class HTCustomerSalesAction extends ActionSupport {
      /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Customer> customerlist=new ArrayList<Customer>();
    private List<Person> goodsalelist=new ArrayList<Person>();
	public List<Customer> getCustomerlist() {
		return customerlist;
	}
	public List<Person> getGoodsalelist() {
		return goodsalelist;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		UserDaoImpl u=new UserDaoImpl();
		customerlist=u.HTSelectCustomer();
		goodsalelist=u.SelectGoodSale();
		return SUCCESS;
	}
      
      
}
