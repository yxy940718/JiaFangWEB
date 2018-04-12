package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.News;
import com.opensymphony.xwork2.ActionSupport;

public class HTSelectNewsDeiltus extends ActionSupport {
   private int newsid;
   private List<News> selectnewsdeiltus=new ArrayList<News>();
   

public List<News> getSelectnewsdeiltus() {
	return selectnewsdeiltus;
}

public int getNewsid() {
	return newsid;
}

public void setNewsid(int newsid) {
	this.newsid = newsid;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	selectnewsdeiltus=u.HTSelectnewsList(newsid);
	return SUCCESS;
}

}
