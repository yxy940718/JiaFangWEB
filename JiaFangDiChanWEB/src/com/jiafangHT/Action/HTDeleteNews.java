package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HTDeleteNews extends ActionSupport {
   private int newsid;

public int getNewsid() {
	return newsid;
}

public void setNewsid(int newsid) {
	this.newsid = newsid;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setCharacterEncoding("utf-8");
	boolean b=u.DeleteNEWS(newsid);
	if(b){
		response.getWriter().write("删除成功");
	}else{
		response.getWriter().write("删除失败");
	}
	return null;
}

}
