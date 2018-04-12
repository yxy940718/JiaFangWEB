package com.jiafang.Dao;

import java.util.List;

import com.jiafang.domain.Message;
import com.jifangHT.domain.Customer;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.News;
import com.jifangHT.domain.Person;
import com.jifangHT.domain.applicationhome;
import com.jifangHT.domain.usercontact;



public interface UserDao {
    public String Register(String username,String password,String email);
    public boolean Login(String username,String password);
    public boolean SaveHouseXQ(String leibie,String home,String where,String shi,String ting,String wei,String zhuangxiu,String user,String phone,String qq);
    public boolean SaveContant(String c_person,String c_phone,String c_qq,String c_value);
    public List<Person> SelectAdmin(int Administratorid ) ;
    public boolean ExitCollectionHome(int homeid,String username);
    public boolean CollectionHome(int homeid,String username);
    public String CollectionPageHome(int pageNo,int pageSize,String username);
    public List<HomeDeiltus> collectionHomeList(String sqlStatement);
    public int getCollectionPageCount(String username);
     
    

    /*后台*/
    public boolean HTLogin(String username,String password);
    
    public Person personDetails(int username);
    
    public boolean AlertadminNews(String administratorid, String username,  String pwd,String phone,String QQ,String wechat, String email, String Introduction);
    public boolean AddadminNews( String username,  String pwd,String phone,String QQ,String wechat, String email, String Introduction);
    public List<Person> SelectAdmin();
    public boolean DeleteAdmin(int id);
    public boolean HTAddHome(String leibie,String homename,String where,String shi,String ting,String wei,String chu,String che,String yang,String niandai,String mianji,String zhuangxiu,String chaoxiang,String homeleixing,String photo,int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong);
    public List<HomeDeiltus> SelectHome();
    public List<HomeDeiltus> SelectHomeDeiltus(int id);
    public boolean DeleteHome(int homeid);
    public List<HomeDeiltus> SelectHotHome(String tablename);
    public boolean HTAlterHome(String leibie,String homename,String where,String shi,String ting,String wei,String chu,String che,String yang,String niandai,String mianji,String zhuangxiu,String chaoxiang,String homeleixing,String photo,int administratorid,int price,int louceng,int homeid,String xiaoqu,String zhoubian,String jiaotong);
    //查询类型
    public String SelectHomeleixing(int id);
    //删除
    public boolean s_DeleteHome(int id,String tablename);
    //添加
    public boolean s_AddHome(String tablename,int id,String leibie,String homename,String where,String shi,String ting,String wei,String chu,String che,String yang,String niandai,String mianji,String zhuangxiu,String chaoxiang,String homeleixing,String photo,int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong);
    //留言
    public List<usercontact> selectContact();
    public List<usercontact> selectContact(int cid);
    public boolean DeleteContact(int did);
    //申请
    public List<applicationhome> HTSelectApplication();
    public List<applicationhome> HTSelectApplication(int homeid);
    public boolean DeleteApplication(int did);
   
    public List<News> HTSelectnewsList();
    public List<News> HTSelectnewsList(int newsid);
    public boolean DeleteNEWS(int dnewsid);
    public int SelectNews();
    public int SelectContant();
    public int SelectHouseXQ();
	public boolean HTaddNews(String title, String news, String photo, int personid, String context);
	public boolean HTAdminPhoto(String phopo,int personid);
	public boolean DeleteGoodAdmin(int id);
	public boolean AddGoodadminNews(int administratorid,String username, String pwd, String phone, String QQ, String wechat, String email,
			String Introduction,String photosrc);
	public boolean HTsetCustomer( String customername, String customerjianjie, String customeryear,  String photosrc);
	public boolean DeleteCustomer(int id);
	public List<Person> SelectGoodSale();
	public List<Customer> HTSelectCustomer();
	public boolean HTAlterLeaedHome(String leibie, String homename, String where, String shi, String ting, String wei,
			String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
			String homeleixing, String photo, int administratorid, int price, int louceng, int homeid,String xiaoqu,String zhoubian,String jiaotong);
	public List<HomeDeiltus> SelectLeaedHome();
	public boolean DeleteLeaedHome(int homeid);
	public List<HomeDeiltus> SelectLeaedHomeDeiltus(int id);
	public boolean HTAddLeaedHome(String leibie, String homename, String where, String shi, String ting, String wei,
			String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
			String homeleixing, String photo, int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong);
}
