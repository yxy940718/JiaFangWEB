package com.jiafang.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ContantAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String c_person;
    private String c_phone;
    private String c_qq;
    private String c_value;
    
	public String getC_person() {
		return c_person;
	}

	public void setC_person(String c_person) {
		this.c_person = c_person;
	}

	public String getC_phone() {
		return c_phone;
	}

	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}

	public String getC_qq() {
		return c_qq;
	}

	public void setC_qq(String c_qq) {
		this.c_qq = c_qq;
	}

	public String getC_value() {
		return c_value;
	}

	public void setC_value(String c_value) {
		this.c_value = c_value;
	}

	@Override
	public String execute() throws Exception {
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		UserDaoImpl u=new UserDaoImpl();
		boolean b=u.SaveContant(c_person, c_phone, c_qq, c_value);
		if(b){
			 response.getWriter().write("提交成功"); 
		}else{
			response.getWriter().write("网络错误，稍后重试！！！");
		}
		return null;
	}
    
}
