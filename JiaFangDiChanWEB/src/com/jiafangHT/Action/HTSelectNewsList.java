package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.News;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectNewsList extends ActionSupport {
     private List<News> selectnewslist=new ArrayList<News>();
     
	public List<News> getSelectnewslist() {
		return selectnewslist;
	}

	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		selectnewslist =u.HTSelectnewsList();
		return SUCCESS;
	}
   
}
