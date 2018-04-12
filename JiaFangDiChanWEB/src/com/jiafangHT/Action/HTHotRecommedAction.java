package com.jiafangHT.Action;

import java.util.ArrayList;
import java.util.List;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.HomeDeiltus;
import com.opensymphony.xwork2.ActionSupport;

public class HTHotRecommedAction extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

private List<HomeDeiltus> hotleaselist=new ArrayList<HomeDeiltus>();
private List<HomeDeiltus> hotsalelist=new ArrayList<HomeDeiltus>();

public List<HomeDeiltus> getHotsalelist() {
	return hotsalelist;
}

public List<HomeDeiltus> getHotleaselist() {
	return hotleaselist;
}

@Override
public String execute() throws Exception {
	UserDaoImpl u=new UserDaoImpl();
		hotleaselist=u.SelectHotHome("HotLease");
		hotsalelist=u.SelectHotHome("HotSale");
	return SUCCESS;
}


   
}
