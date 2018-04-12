package com.jiafangHT.Action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jiafang.DaoImpl.UserDaoImpl;
import com.jifangHT.domain.Person;
import com.opensymphony.xwork2.ActionSupport;

public class HTAddHomeAction extends ActionSupport {
	//leibie,homename,where,shi,ting,wei,chu,che,yang,niandai,mianji,zhuangxiu,chaoxiang,homeleixing,photo
//	String leibie,String homename,String where,String shi,String ting,String wei,String chu,String che,String yang,String niandai,
//	String mianji,String zhuangxiu,String chaoxiang,String homeleixing,String photo
	private String leibie;
	private int price;
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	private String homename;
	private String where;
	private String shi;
	private String ting;
	private String wei;
	private String chu;
	private String che;
	private String yang;
	private String niandai;
	private String mianji;
	private String zhuangxiu;
	private String chaoxiang;
	private String homeleixing;
	private String photo;
	private int administratorid;
	private int louceng;
	private String xiaoqu;
	private String zhoubian;
	private String jiaotong;
	
	public String getXiaoqu() {
		return xiaoqu;
	}
	public void setXiaoqu(String xiaoqu) {
		this.xiaoqu = xiaoqu;
	}
	public String getZhoubian() {
		return zhoubian;
	}
	public void setZhoubian(String zhoubian) {
		this.zhoubian = zhoubian;
	}
	public String getJiaotong() {
		return jiaotong;
	}
	public void setJiaotong(String jiaotong) {
		this.jiaotong = jiaotong;
	}
	public int getLouceng() {
		return louceng;
	}
	public void setLouceng(int louceng) {
		this.louceng = louceng;
	}
	@Override
	public String execute() throws Exception {
		UserDaoImpl u=new UserDaoImpl();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		boolean b=u.HTAddHome(leibie, homename, where, shi, ting, wei, chu, che, yang, niandai, mianji, zhuangxiu, chaoxiang, homeleixing, photo, administratorid,price,louceng,xiaoqu,zhoubian,jiaotong);
	   if(b){
		   response.getWriter().write("添加成功"); 
	   }else{
		   response.getWriter().write("添加失败！"); 
	   }
	   
	   
	   return null;
	}
	public String getLeibie() {
		return leibie;
	}
	public void setLeibie(String leibie) {
		this.leibie = leibie;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
	}
	public String getWhere() {
		return where;
	}
	public void setWhere(String where) {
		this.where = where;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getTing() {
		return ting;
	}
	public void setTing(String ting) {
		this.ting = ting;
	}
	public String getWei() {
		return wei;
	}
	public void setWei(String wei) {
		this.wei = wei;
	}
	public String getChu() {
		return chu;
	}
	public void setChu(String chu) {
		this.chu = chu;
	}
	public String getChe() {
		return che;
	}
	public void setChe(String che) {
		this.che = che;
	}
	public String getYang() {
		return yang;
	}
	public void setYang(String yang) {
		this.yang = yang;
	}
	public String getNiandai() {
		return niandai;
	}
	public void setNiandai(String niandai) {
		this.niandai = niandai;
	}
	public String getMianji() {
		return mianji;
	}
	public void setMianji(String mianji) {
		this.mianji = mianji;
	}
	public String getZhuangxiu() {
		return zhuangxiu;
	}
	public void setZhuangxiu(String zhuangxiu) {
		this.zhuangxiu = zhuangxiu;
	}
	public String getChaoxiang() {
		return chaoxiang;
	}
	public void setChaoxiang(String chaoxiang) {
		this.chaoxiang = chaoxiang;
	}
	public String getHomeleixing() {
		return homeleixing;
	}
	public void setHomeleixing(String homeleixing) {
		this.homeleixing = homeleixing;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getAdministratorid() {
		return administratorid;
	}
	public void setAdministratorid(int administratorid) {
		this.administratorid = administratorid;
	}
	
}
