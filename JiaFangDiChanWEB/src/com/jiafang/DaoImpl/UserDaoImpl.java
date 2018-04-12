package com.jiafang.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jiafang.Dao.SqlDb;
import com.jiafang.Dao.UserDao;
import com.jiafang.domain.Message;
import com.jiafang.utils.zh_cnConversion;
import com.jifangHT.domain.Count;
import com.jifangHT.domain.Customer;
import com.jifangHT.domain.HomeDeiltus;
import com.jifangHT.domain.News;
import com.jifangHT.domain.Person;
import com.jifangHT.domain.applicationhome;
import com.jifangHT.domain.usercontact;


public class UserDaoImpl implements UserDao {
	zh_cnConversion zh=new zh_cnConversion();
	  SqlDb s=new SqlDb();
	    ResultSet rs;
		int num = 0;
		PreparedStatement sql;
		
		
		
		
		public int getCollectionPageCount(String username){
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
	    	int pageCount=0;
			num=0;
			try {
	            String st="select count(*)  from CollectionHome where username='"+username+"'";
	            System.out.println("---------------查询收藏------------"+st);
	            sql=con.prepareStatement(st);
	            rs=sql.executeQuery();
	            rs.next();
	            int rowsCount=rs.getInt(1);
	            pageCount=(int)Math.ceil(1.0*rowsCount/6);//算出总共需要多少页
	            con.close();
		   } catch (SQLException e) {
			e.printStackTrace();
			}
			return pageCount;
		}
		public List<HomeDeiltus> collectionHomeList(String sqlStatement){
			 ArrayList<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			ResultSet result=null;
	        try {
	            String st=" select * from AddHome where homeid in ("+sqlStatement.substring(0,sqlStatement.length()-1)+")";
	            sql=con.prepareStatement(st);
	         
	            result=sql.executeQuery();
	           
	            while(result.next()){
	            	 HomeDeiltus hd=new HomeDeiltus();
				    hd.setHomeid(result.getInt(1));
				    hd.setLeibie(zh.toZH(result.getString(2)));
				    hd.setHomename(zh.toZH(result.getString(3)));
				    hd.setWhere(zh.toZH(result.getString(4)));
				    hd.setShi(zh.toZH(result.getString(5)));
				    hd.setTing(zh.toZH(result.getString(6)));
				    hd.setWei(zh.toZH(result.getString(7)));
				    hd.setChu(zh.toZH(result.getString(8)));
				    hd.setChe(zh.toZH(result.getString(9)));
				    hd.setYang(zh.toZH(result.getString(10)));
				    hd.setNiandai(zh.toZH(result.getString(11)));
				    hd.setMianji(zh.toZH(result.getString(12)));
				    hd.setZhuangxiu(zh.toZH(result.getString(13)));
				    hd.setChaoxiang(zh.toZH(result.getString(14)));
				    hd.setHomeleixing(zh.toZH(result.getString(15)));
				    hd.setPhoto(zh.toZH(result.getString(16)));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setPrice(result.getInt(18));
				    list.add(hd);          
	            }
	            con.close();
	            } catch (SQLException e) {
					e.printStackTrace();
					}
	        return list;
	    }    
			
			
		public String CollectionPageHome(int pageNo,int pageSize,String username){//两个形参分别为当前页，每页有多少行
	         String str="";
	        Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			ResultSet result=null;
	        try {
	            String st=" select homeid from CollectionHome where username='"+zh.toUTF(username)+"' limit ?,?";
	            sql=con.prepareStatement(st);
	            sql.setInt(1, (pageNo-1)*pageSize);//距离这一页的第一行数据，其前面有多少行数据
	            sql.setInt(2, pageSize);//每页有多少行
	            result=sql.executeQuery();
	           
	            while(result.next()){
	            	  str=str+result.getString(1)+',';
	            }
	            con.close();
	        } catch (SQLException e) {
				e.printStackTrace();
	        } 
	        System.out.println("获取收藏id"+str);
	        return str;
	    }    
		
		
		
		
		
		
		
		
		
		
		
		
		@Override
		public boolean ExitCollectionHome(int homeid, String username) {
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			try {
			String st = "SELECT*FROM CollectionHome where homeid='"+homeid+"' and username='"+zh.toUTF(username)+"'";
			System.out.println(st);
			sql = con.prepareStatement(st);
			rs = sql.executeQuery();
			while (rs.next())
				num++;
			con.close();
			} catch (SQLException e) {
			System.out.println("SQLException:" + e.getMessage());
			}
			if (num != 0) {
				System.out.println("查询收藏-------收藏存在");
			    return false;
			}
			else{
				System.out.println("查询收藏-------收藏不存在");
				return true;
			}
			
		}

		@Override
		public boolean CollectionHome(int homeid, String username) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into CollectionHome (homeid,username) values("+homeid+",'"+zh.toUTF(username)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加收藏------提交成功");
					return true;
					} else {
						System.out.println("添加收藏------提交失败");
					return false;
					}
		}

		//select * from table limit (start-1)*limit,limit
		//分页 总页码
		public int getPageCount() throws Exception{
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			try {
	            String st="select count(*) from AddHome";
	            sql=con.prepareStatement(st);
	            rs=sql.executeQuery();
	            rs.next();
	            int rowsCount=rs.getInt(1);
	            int pageCount=(int)Math.ceil(1.0*rowsCount/6);//算出总共需要多少页
	            return pageCount;
	        }
	        finally{
	            con.close();
	        }
		}
		
		public int getSerachPageCount(String name,String leibie,int minprice,int maxprice) throws Exception{
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			try {
	            String st="select count(*)  from AddHome where homename  LIKE '%"+zh.toUTF(name)+"%' or homewhere  LIKE '%"+zh.toUTF(name)+"%' and price>="+minprice+"  and price<="+maxprice+" and leibie='"+zh.toUTF(leibie)+"'";
	            System.out.println("---------------搜索查询------------"+st);
	            sql=con.prepareStatement(st);
	            rs=sql.executeQuery();
	            rs.next();
	            int rowsCount=rs.getInt(1);
	            int pageCount=(int)Math.ceil(1.0*rowsCount/6);//算出总共需要多少页
	            return pageCount;
	        }
	        finally{
	            con.close();
	        }
		}
		
		public ArrayList<HomeDeiltus> SerachPageHome(int pageNo,int pageSize,String name,String leibie,int minprice,int maxprice) throws Exception{//两个形参分别为当前页，每页有多少行
	        ArrayList<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
	        Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			ResultSet result=null;
	        try {
	            String st=" select * from AddHome where homename  LIKE '%"+zh.toUTF(name)+"%' or homewhere  LIKE '%"+zh.toUTF(name)+"%' and price>="+minprice+"  and price<="+maxprice+" and leibie='"+zh.toUTF(leibie)+"' limit ?,?";
	            sql=con.prepareStatement(st);
	            sql.setInt(1, (pageNo-1)*pageSize);//距离这一页的第一行数据，其前面有多少行数据
	            sql.setInt(2, pageSize);//每页有多少行
	            result=sql.executeQuery();
	           
	            while(result.next()){
	            	 HomeDeiltus hd=new HomeDeiltus();
				    hd.setHomeid(result.getInt(1));
				    hd.setLeibie(zh.toZH(result.getString(2)));
				    hd.setHomename(zh.toZH(result.getString(3)));
				    hd.setWhere(zh.toZH(result.getString(4)));
				    hd.setShi(zh.toZH(result.getString(5)));
				    hd.setTing(zh.toZH(result.getString(6)));
				    hd.setWei(zh.toZH(result.getString(7)));
				    hd.setChu(zh.toZH(result.getString(8)));
				    hd.setChe(zh.toZH(result.getString(9)));
				    hd.setYang(zh.toZH(result.getString(10)));
				    hd.setNiandai(zh.toZH(result.getString(11)));
				    hd.setMianji(zh.toZH(result.getString(12)));
				    hd.setZhuangxiu(zh.toZH(result.getString(13)));
				    hd.setChaoxiang(zh.toZH(result.getString(14)));
				    hd.setHomeleixing(zh.toZH(result.getString(15)));
				    hd.setPhoto(zh.toZH(result.getString(16)));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setPrice(result.getInt(18));
				    list.add(hd);          
	            }
	            
	        } finally{
	        con.close();
	        }
	        return list;
	    }    
		
		
		
		
		public ArrayList<HomeDeiltus> getPageHome(int pageNo,int pageSize) throws Exception{//两个形参分别为当前页，每页有多少行
	        ArrayList<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
	        Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			ResultSet result=null;
	        try {
	            String st="select * from AddHome limit ?,?";
	            sql=con.prepareStatement(st);
	            sql.setInt(1, (pageNo-1)*pageSize);//距离这一页的第一行数据，其前面有多少行数据
	            sql.setInt(2, pageSize);//每页有多少行
	            result=sql.executeQuery();
	           
	            while(result.next()){
	            	 HomeDeiltus hd=new HomeDeiltus();
				    hd.setHomeid(result.getInt(1));
				    hd.setLeibie(zh.toZH(result.getString(2)));
				    hd.setHomename(zh.toZH(result.getString(3)));
				    hd.setWhere(zh.toZH(result.getString(4)));
				    hd.setShi(zh.toZH(result.getString(5)));
				    hd.setTing(zh.toZH(result.getString(6)));
				    hd.setWei(zh.toZH(result.getString(7)));
				    hd.setChu(zh.toZH(result.getString(8)));
				    hd.setChe(zh.toZH(result.getString(9)));
				    hd.setYang(zh.toZH(result.getString(10)));
				    hd.setNiandai(zh.toZH(result.getString(11)));
				    hd.setMianji(zh.toZH(result.getString(12)));
				    hd.setZhuangxiu(zh.toZH(result.getString(13)));
				    hd.setChaoxiang(zh.toZH(result.getString(14)));
				    hd.setHomeleixing(zh.toZH(result.getString(15)));
				    hd.setPhoto(zh.toZH(result.getString(16)));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setAdministratorid(result.getInt(17));
				    hd.setPrice(result.getInt(18));
				    list.add(hd);          
	            }
	            
	        } finally{
	        con.close();
	        }
	        return list;
	    }    
		
		
		public int getPageNEWSCount() throws Exception{
			Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			try {
	            String st="select count(*) from News";
	            sql=con.prepareStatement(st);
	            rs=sql.executeQuery();
	            rs.next();
	            int rowsCount=rs.getInt(1);
	            int pageCount=(int)Math.ceil(1.0*rowsCount/5);//算出总共需要多少页
	            return pageCount;
	        }
	        finally{
	            con.close();
	        }
		}
		
		public List<News> getPageNEWS(int pageNo,int pageSize) throws Exception{//两个形参分别为当前页，每页有多少行
	        Connection con=SqlDb.getConnection();
	    	PreparedStatement sql;
			num=0;
			ResultSet result=null;
			 List<News> list=new ArrayList<News>();
	        try {
	            String st="select * from News limit ?,?";
	            sql=con.prepareStatement(st);
	            sql.setInt(1, (pageNo-1)*pageSize);//距离这一页的第一行数据，其前面有多少行数据
	            sql.setInt(2, pageSize);//每页有多少行
	            result=sql.executeQuery();
	           
	            while(result.next()){
	            	
	            	News n=new News();
	                n.setNewsid(result.getInt(1));
	                 n.setTitle(zh.toZH(result.getString(2)));
	               n.setNews(zh.toZH(result.getString(3)));
	               n.setPhoto(zh.toZH(result.getString(4)));
	               n.setPersonid(result.getInt(5));
	               n.setContext(result.getString(6));
	   				list.add(n);
	            }
	            
	        } finally{
	        con.close();
	        }
	        return list;
	    }    
		
		
		public List<Person> SelectAdmin(int Administratorid ) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			List<Person> list=new ArrayList<Person>();
			String st="select * from administrator where administratorid="+Administratorid+"";
			System.out.println(st);
			try {
			sql=con.prepareStatement(st);
			
			result=sql.executeQuery();
			while(result.next()){
			Person p=new Person();
			p.setAdministratorid(result.getString(1));
			p.setUsername(zh.toZH(result.getString(2)));
			p.setPwd(zh.toZH(result.getString(3)));
			p.setPhone(zh.toZH(result.getString(4)));
			p.setQQ(zh.toZH(result.getString(5)));
			p.setWechat(zh.toZH(result.getString(6)));
			p.setEmail(zh.toZH(result.getString(7)));
			p.setIntroduction(zh.toZH(result.getString(8)));
			p.setPhotosrc(zh.toZH(result.getString(9)));
			list.add(p);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}	
    public boolean exit(String username,String email){
    	Connection con=SqlDb.getConnection();
    	PreparedStatement sql;
		num=0;
		try {
		String st = "SELECT*FROM UserInfo where username='"+username+"' or email='"+email+"'";
		System.out.println(st);
		sql = con.prepareStatement(st);
		rs = sql.executeQuery();
		while (rs.next())
			num++;
		con.close();
		} catch (SQLException e) {
		System.out.println("SQLException:" + e.getMessage());
		}
		if (num != 0) {
			System.out.println("查询账号-------账号存在");
		    return false;
		}
		else{
			System.out.println("查询账号-------账号不存在");
			return true;
		}
		
    }
	@Override
	public String Register(String username, String password, String email) {
		Connection con=SqlDb.getConnection();
		PreparedStatement sql;
		num=0;
		 if(exit(username,email)) {  

			try {
			String st = "insert into UserInfo (username,pwd,email) values('"+username+"','"+password+"','"+email+"')";
			System.out.println(st);
			sql = con.prepareStatement(st);
			num = sql.executeUpdate();
	        con.close(); 
			} catch (SQLException e) {
			e.printStackTrace();
			}
			if (num != 0) {
				System.out.println("注册账号------注册成功");
				return "注册成功";
				} else {
					System.out.println("注册账号------注册失败");
				return "注册失败,请稍后重试";
				}
		}else{
			System.out.println("注册账号------邮箱账号已存在");
			return "用户名或邮箱账号已存在";
		}
	}
	
		
	

	@Override
	public boolean Login(String username, String password) {
		Connection con=SqlDb.getConnection();
		try {
			String st = "SELECT*FROM UserInfo where username=?";
			sql = con.prepareStatement(st);
			sql.setString(1, username);
			//sql.setString(2, pwd);
			rs = sql.executeQuery();
			while (rs.next()){
				
				String s=rs.getString("pwd").trim();
				if(password.equals(s)){
				num++;
				System.out.println(num+"登录查询是否存在");
				}
			}
				con.close();
		} catch (SQLException e) {
			System.out.println("SQLException:" + e.getMessage());
		}
		if (num != 0)
			return true;
		else
			return false;
	}
	
	

		@Override
		//(leibie,home,where,shi,wei,chu,yang,che,chaoxiang,zhuangxiu,mianji,niandai,louceng1,louceng2,chkAllowed,miaoshu,user,phone,qq);
		public boolean SaveHouseXQ(String leibie, String home, String where, String shi, String ting, String wei,
				 String zhuangxiu, String user, String phone,
				String qq) {
			
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
			
				try {
				String st = "insert into HouseXQ (leibie,home,position,shi,ting,wei,zhuangxiu,person,phone,qq) "
						+ "values('"+zh.toUTF(leibie)+"','"+zh.toUTF(home)+"','"+zh.toUTF(where)+"','"+zh.toUTF(shi)+"','"+zh.toUTF(ting)+"','"+zh.toUTF(wei)+"','"+zh.toUTF(zhuangxiu)+"','"+zh.toUTF(user)+"','"+zh.toUTF(phone)+"','"+zh.toUTF(qq)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("提交申请------提交成功");
					return true;
					} else {
						System.out.println("提交申请------提交失败");
					return false;
					}
		}
		@Override
		public boolean SaveContant(String c_person, String c_phone, String c_qq, String c_value) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into Contant (c_person,c_phone,c_qq,c_value) "
						+ "values('"+zh.toUTF(c_person)+"','"+zh.toUTF(c_phone)+"','"+zh.toUTF(c_qq)+"','"+zh.toUTF(c_value)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("联系我们------提交成功");
					return true;
					} else {
						System.out.println("联系我们------提交失败");
					return false;
					}
		}
		
		/*后台*/
		@Override
		public boolean HTLogin(String username, String password) {
			Connection con=SqlDb.getConnection();
			try {
				String st = "SELECT*FROM administrator where phone=?";
				sql = con.prepareStatement(st);
				sql.setString(1, username);
				//sql.setString(2, pwd);
				rs = sql.executeQuery();
				while (rs.next()){
					String s=rs.getString("pwd").trim();
					if(password.equals(zh.toZH(s))){
					num++;
					System.out.println(num+"后台登录查询是否存在");
					}
				}
					con.close();
			} catch (SQLException e) {
				System.out.println("SQLException:" + e.getMessage());
			}
			if (num != 0)
				return true;
			else
				return false;
		}
		
		public int selectid(String username) {
			Connection con=SqlDb.getConnection();
			int s=0;
			try {
				String st = "SELECT administratorid FROM administrator where phone=?";
				sql = con.prepareStatement(st);
				sql.setString(1, username);
				rs = sql.executeQuery();
				while (rs.next()){
					 s=rs.getInt(1);
				}
					con.close();
			} catch (SQLException e) {
				System.out.println("SQLException:" + e.getMessage());
			}
			return s;
		}
		public String selectname(String username) {
			Connection con=SqlDb.getConnection();
			String s="";
			try {
				String st = "SELECT username FROM administrator where phone=?";
				sql = con.prepareStatement(st);
				sql.setString(1, username);
				rs = sql.executeQuery();
				while (rs.next()){
					 s=zh.toZH(rs.getString(1));
				}
					con.close();
			} catch (SQLException e) {
				System.out.println("SQLException:" + e.getMessage());
			}
			return s;
		}
		
		public String selectname(int adminid) {
			Connection con=SqlDb.getConnection();
			String s="";
			try {
				String st = "SELECT username FROM administrator where administratorid=?";
				sql = con.prepareStatement(st);
				sql.setInt(1,adminid);
				rs = sql.executeQuery();
				while (rs.next()){
					 s=zh.toZH(rs.getString(1));
				}
					con.close();
			} catch (SQLException e) {
				System.out.println("SQLException:" + e.getMessage());
			}
			return s;
		}
		
		
		
		
		
		@Override
		public Person personDetails(int username) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from administrator where administratorid="+username+"";
			System.out.println(st+"后台登录查询管理员信息");
			Person p=new Person();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
			p.setAdministratorid(result.getString(1));
			p.setUsername(zh.toZH(result.getString(2)));
			p.setPwd(zh.toZH(result.getString(3)));
			p.setPhone(zh.toZH(result.getString(4)));
			p.setQQ(zh.toZH(result.getString(5)));
			p.setWechat(zh.toZH(result.getString(6)));
			p.setEmail(zh.toZH(result.getString(7)));
			p.setIntroduction(zh.toZH(result.getString(8)));
			p.setPhotosrc(zh.toZH(result.getString(9)));
			System.out.println("后台登录查询管理员信息"+p.getUsername());
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return p;
		}
		
		@Override
		public boolean HTAlterHome(String leibie, String homename, String where, String shi, String ting, String wei,
				String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
				String homeleixing, String photo, int administratorid, int price, int louceng, int homeid,String xiaoqu,String zhoubian,String jiaotong) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "UPDATE AddHome SET leibie = '"+zh.toUTF(leibie)+"', homename = '"+zh.toUTF(homename)+"', homewhere = '"+zh.toUTF(where)+"',"
						+ " shi = '"+zh.toUTF(shi)+"',ting = '"+zh.toUTF(ting)+"', wei = '"+zh.toUTF(wei)+"',  chu = '"+zh.toUTF(chu)+"',che = '"+zh.toUTF(che)+"', yang = '"+zh.toUTF(yang)+"', niandai = '"+zh.toUTF(niandai)+"',"
						+ " mianji = '"+zh.toUTF(mianji)+"',zhuangxiu = '"+zh.toUTF(zhuangxiu)+"', chaoxiang = '"+zh.toUTF(chaoxiang)+"', zhoubian = '"+zh.toUTF(zhoubian)+"', xiaoqu = '"+zh.toUTF(xiaoqu)+"', jiaotong = '"+zh.toUTF(jiaotong)+"',  chu = '"+zh.toUTF(homeleixing)+"', photo = '"+zh.toUTF(photo)+"', price = '"+price+"', louceng = '"+louceng+"'"
						+ "WHERE homeid ="+homeid+" ";
				System.out.println(st+"------------修改房源信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("房源信息------修改成功");
					return true;
					} else {
						System.out.println("房源信息------修改失败");
					return false;
					}
		}

		@Override
		public boolean AlertadminNews(String administratorid, String username, String pwd, String phone, String QQ,
				String wechat, String email, String Introduction) {
			
							Connection con=SqlDb.getConnection();
					PreparedStatement sql;
					num=0;
						try {
						String st = "UPDATE administrator SET username = '"+zh.toUTF(username)+"', pwd = '"+zh.toUTF(pwd)+"', phone = '"+zh.toUTF(phone)+"',"
								+ " QQ = '"+zh.toUTF(QQ)+"',wechat = '"+zh.toUTF(wechat)+"', email = '"+zh.toUTF(email)+"',  Introduction = '"+zh.toUTF(Introduction)+"'WHERE administratorid ="+administratorid+" ";
						System.out.println(st+"------------修改管理员信息--------------");
						sql = con.prepareStatement(st);
						num = sql.executeUpdate();
				        con.close(); 
						} catch (SQLException e) {
						e.printStackTrace();
						}
						if (num != 0) {
							System.out.println("管理员信息------修改成功");
							return true;
							} else {
								System.out.println("管理员信息------修改失败");
							return false;
							}
		}
		@Override
		public boolean HTAddHome(String leibie, String homename, String where, String shi, String ting, String wei,
				String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
				String homeleixing, String photo, int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into AddHome (leibie,homename,homewhere,shi,ting,wei,chu,che,yang,niandai,mianji,zhuangxiu,chaoxiang,homeleixing,photo,administratorid,price,louceng,xiaoqu,zhoubian,jiaotong) "
						+ "values('"+zh.toUTF(leibie)+"','"+zh.toUTF(homename)+"','"+zh.toUTF(where)+"','"+zh.toUTF(shi)+"'"
								+ ",'"+zh.toUTF(ting)+"','"+zh.toUTF(wei)+"','"+zh.toUTF(chu)+"'"
										+ ",'"+zh.toUTF(che)+"','"+zh.toUTF(yang)+"','"+zh.toUTF(niandai)+"'"
												+ ",'"+zh.toUTF(mianji)+"','"+zh.toUTF(zhuangxiu)+"','"+zh.toUTF(chaoxiang)+"'"
														+ ",'"+zh.toUTF(homeleixing)+"','"+zh.toUTF(photo)+"','"+administratorid+"',"+price+","+louceng+",'"+zh.toUTF(xiaoqu)+"','"+zh.toUTF(zhoubian)+"','"+zh.toUTF(jiaotong)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加房屋------提交成功");
					return true;
					} else {
						System.out.println("添加房屋------提交失败");
					return false;

		}
		}
		@Override
		public boolean AddadminNews(String username, String pwd, String phone, String QQ, String wechat, String email,
				String Introduction) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into administrator(username, pwd, phone, QQ, wechat, email, Introduction)"
						+ "values('"+zh.toUTF(username)+"','"+zh.toUTF(pwd)+"','"+zh.toUTF(phone)+"','"+zh.toUTF(QQ)+"'"
								+ ",'"+zh.toUTF(wechat)+"','"+zh.toUTF(email)+"','"+zh.toUTF(Introduction)+"')";
				System.out.println(st+"------------添加管理员信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("管理员信息------添加成功");
					return true;
					} else {
						System.out.println("管理员信息------添加失败");
					return false;
					}
		}
		@Override
		public List<Person> SelectAdmin() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			List<Person> list=new ArrayList<Person>();
			String st="select * from administrator";
			System.out.println(st);
			try {
			sql=con.prepareStatement(st);
			
			result=sql.executeQuery();
			while(result.next()){
			Person p=new Person();
			p.setAdministratorid(result.getString(1));
			p.setUsername(zh.toZH(result.getString(2)));
			p.setPwd(zh.toZH(result.getString(3)));
			p.setPhone(zh.toZH(result.getString(4)));
			p.setQQ(zh.toZH(result.getString(5)));
			p.setWechat(zh.toZH(result.getString(6)));
			p.setEmail(zh.toZH(result.getString(7)));
			p.setIntroduction(zh.toZH(result.getString(8)));
			p.setPhotosrc(zh.toZH(result.getString(9)));
			list.add(p);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public boolean DeleteAdmin(int id) {
				Connection con=SqlDb.getConnection();
				PreparedStatement sql;
				num=0;
					try {
					String st = "delete from administrator where administratorid="+id+"" ;
					System.out.println(st+"------------删除管理员信息--------------");
					sql = con.prepareStatement(st);
					num = sql.executeUpdate();
			        con.close(); 
					} catch (SQLException e) {
					e.printStackTrace();
					}
					if (num != 0) {
						System.out.println("管理员信息------删除成功");
						return true;
						} else {
							System.out.println("管理员信息------删除失败");
						return false;
						}
		}
		
		public boolean DeleteGoodAdmin(int id) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from GoodSale where administratorid="+id+"" ;
				System.out.println(st+"------------删除管理员信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("管理员信息------删除成功");
					return true;
					} else {
						System.out.println("管理员信息------删除失败");
					return false;
					}
	}
		
		
		
		public boolean AddGoodadminNews(int administratorid,String username, String pwd, String phone, String QQ, String wechat, String email,
				String Introduction,String photosrc) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into GoodSale(administratorid,username, pwd, phone, QQ, wechat, email, Introduction,photosrc)"
						+ "values("+administratorid+",'"+zh.toUTF(username)+"','"+zh.toUTF(pwd)+"','"+zh.toUTF(phone)+"','"+zh.toUTF(QQ)+"'"
								+ ",'"+zh.toUTF(wechat)+"','"+zh.toUTF(email)+"','"+zh.toUTF(Introduction)+"','"+zh.toUTF(photosrc)+"')";
				System.out.println(st+"------------添加管理员信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("管理员信息------添加成功");
					return true;
					} else {
						System.out.println("管理员信息------添加失败");
					return false;
					}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		@Override
		public List<HomeDeiltus> SelectHome() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from AddHome";
			System.out.println(st+"后台登录房屋列表");
			List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				HomeDeiltus hd=new HomeDeiltus();
				hd.setHomeid(result.getInt(1));
			    hd.setLeibie(zh.toZH(result.getString(2)));
			    hd.setHomename(zh.toZH(result.getString(3)));
			    hd.setWhere(zh.toZH(result.getString(4)));
			    hd.setShi(zh.toZH(result.getString(5)));
			    hd.setTing(zh.toZH(result.getString(6)));
			    hd.setWei(zh.toZH(result.getString(7)));
			    hd.setChu(zh.toZH(result.getString(8)));
			    hd.setChe(zh.toZH(result.getString(9)));
			    hd.setYang(zh.toZH(result.getString(10)));
			    hd.setNiandai(zh.toZH(result.getString(11)));
			    hd.setMianji(zh.toZH(result.getString(12)));
			    hd.setZhuangxiu(zh.toZH(result.getString(13)));
			    hd.setChaoxiang(zh.toZH(result.getString(14)));
			    hd.setHomeleixing(zh.toZH(result.getString(15)));
			    hd.setPhoto(zh.toZH(result.getString(16)));
			    hd.setAdministratorid(result.getInt(17));
			    hd.setAdminname(selectname(result.getInt(17)));
			    hd.setPrice(result.getInt(18));
			    hd.setLouceng(result.getInt(19));
			    hd.setXiaoqu(zh.toZH(result.getString(20)));
			    hd.setZhoubian(zh.toZH(result.getString(21)));
			    hd.setJiaotong(zh.toZH(result.getString(22)));
			    list.add(hd);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public boolean DeleteHome(int homeid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from AddHome where homeid="+homeid+"" ;
				System.out.println(st+"------------删除房屋信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("房屋信息------删除成功");
					return true;
					} else {
						System.out.println("房屋信息------删除失败");
					return false;
					}
		}
		@Override
		public List<HomeDeiltus> SelectHomeDeiltus(int id) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from AddHome where homeid="+id+"";
			System.out.println(st+"后台登录房屋列表详情");
			List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				HomeDeiltus hd=new HomeDeiltus();
			    hd.setHomeid(result.getInt(1));
			    hd.setLeibie(zh.toZH(result.getString(2)));
			    hd.setHomename(zh.toZH(result.getString(3)));
			    hd.setWhere(zh.toZH(result.getString(4)));
			    hd.setShi(zh.toZH(result.getString(5)));
			    hd.setTing(zh.toZH(result.getString(6)));
			    hd.setWei(zh.toZH(result.getString(7)));
			    hd.setChu(zh.toZH(result.getString(8)));
			    hd.setChe(zh.toZH(result.getString(9)));
			    hd.setYang(zh.toZH(result.getString(10)));
			    hd.setNiandai(zh.toZH(result.getString(11)));
			    hd.setMianji(zh.toZH(result.getString(12)));
			    hd.setZhuangxiu(zh.toZH(result.getString(13)));
			    hd.setChaoxiang(zh.toZH(result.getString(14)));
			    hd.setHomeleixing(zh.toZH(result.getString(15)));
			    hd.setPhoto(zh.toZH(result.getString(16)));
			    hd.setAdministratorid(result.getInt(17));
			    hd.setPrice(result.getInt(18));
			    hd.setLouceng(result.getInt(19));
			    hd.setXiaoqu(zh.toZH(result.getString(20)));
			    hd.setZhoubian(zh.toZH(result.getString(21)));
			    hd.setJiaotong(zh.toZH(result.getString(22)));
			    list.add(hd);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public List<HomeDeiltus> SelectHotHome(String tablename) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from "+tablename+"";
			System.out.println(st+"推荐列表详情");
			List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				HomeDeiltus hd=new HomeDeiltus();
			    hd.setHomeid(result.getInt(1));
			    hd.setLeibie(zh.toZH(result.getString(2)));
			    hd.setHomename(zh.toZH(result.getString(3)));
			    hd.setWhere(zh.toZH(result.getString(4)));
			    hd.setShi(zh.toZH(result.getString(5)));
			    hd.setTing(zh.toZH(result.getString(6)));
			    hd.setWei(zh.toZH(result.getString(7)));
			    hd.setChu(zh.toZH(result.getString(8)));
			    hd.setChe(zh.toZH(result.getString(9)));
			    hd.setYang(zh.toZH(result.getString(10)));
			    hd.setNiandai(zh.toZH(result.getString(11)));
			    hd.setMianji(zh.toZH(result.getString(12)));
			    hd.setZhuangxiu(zh.toZH(result.getString(13)));
			    hd.setChaoxiang(zh.toZH(result.getString(14)));
			    hd.setHomeleixing(zh.toZH(result.getString(15)));
			    hd.setPhoto(zh.toZH(result.getString(16)));
			    hd.setAdministratorid(result.getInt(17));
			    hd.setPrice(result.getInt(18));
			    hd.setLouceng(result.getInt(19));
			    hd.setXiaoqu(zh.toZH(result.getString(20)));
			    hd.setZhoubian(zh.toZH(result.getString(21)));
			    hd.setJiaotong(zh.toZH(result.getString(22)));
			    list.add(hd);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public String SelectHomeleixing(int id) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from AddHome where homeid="+id+"";
			String leixing="";
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
		
			while(result.next()){
				leixing=zh.toZH(result.getString(2));
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return leixing;
		}
		@Override
		public boolean s_DeleteHome(int id, String tablename) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from "+tablename+" where homeid="+id+"" ;
				System.out.println(st+"------------删除推荐房屋信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("推荐房屋信息------删除成功");
					return true;
					} else {
						System.out.println("推荐房屋信息------删除失败");
					return false;
					}
		}
		@Override
		public boolean s_AddHome(String tablename,int id, String leibie, String homename, String where, String shi, String ting,
				String wei, String chu, String che, String yang, String niandai, String mianji, String zhuangxiu,
				String chaoxiang, String homeleixing, String photo, int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into "+tablename+" (homeid,leibie,homename,homewhere,shi,ting,wei,chu,che,yang,niandai,mianji,zhuangxiu,chaoxiang,homeleixing,photo,administratorid,price,louceng,xiaoqu,zhoubian,jiaotong) "
						+ "values("+id+",'"+zh.toUTF(leibie)+"','"+zh.toUTF(homename)+"','"+zh.toUTF(where)+"','"+zh.toUTF(shi)+"'"
								+ ",'"+zh.toUTF(ting)+"','"+zh.toUTF(wei)+"','"+zh.toUTF(chu)+"'"
										+ ",'"+zh.toUTF(che)+"','"+zh.toUTF(yang)+"','"+zh.toUTF(niandai)+"'"
												+ ",'"+zh.toUTF(mianji)+"','"+zh.toUTF(zhuangxiu)+"','"+zh.toUTF(chaoxiang)+"'"
														+ ",'"+zh.toUTF(homeleixing)+"','"+zh.toUTF(photo)+"','"+administratorid+"',"+price+","+louceng+",'"+zh.toUTF(xiaoqu)+"','"+zh.toUTF(zhoubian)+"','"+zh.toUTF(jiaotong)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加推荐房屋------提交成功");
					return true;
					} else {
						System.out.println("添加推荐房屋------提交失败");
					return false;

		}
		}
		@Override
		public List<usercontact> selectContact() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from Contant";
			List<usercontact> list=new ArrayList<usercontact>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				usercontact u= new usercontact();
				u.setId(result.getInt(1));
				u.setPerson(zh.toZH(result.getString(2)));
				u.setPhone(zh.toZH(result.getString(3)));
				u.setQq(zh.toZH(result.getString(4)));
				u.setCvaule(zh.toZH(result.getString(5)));
				list.add(u);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		public List<usercontact> selectContact(int cid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from Contant where c_id="+cid+"";
			List<usercontact> list=new ArrayList<usercontact>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				usercontact u= new usercontact();
				u.setId(result.getInt(1));
				u.setPerson(zh.toZH(result.getString(2)));
				u.setPhone(zh.toZH(result.getString(3)));
				u.setQq(zh.toZH(result.getString(4)));
				u.setCvaule(zh.toZH(result.getString(5)));
				list.add(u);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public boolean DeleteContact(int did) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from Contant where c_id="+did+"" ;
				System.out.println(st+"------------删除用户留言信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("删除用户留言信息------删除成功");
					return true;
					} else {
						System.out.println("删除用户留言信息------删除失败");
					return false;
					}
		}
		@Override
		public List<applicationhome> HTSelectApplication() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from HouseXQ";
			List<applicationhome> list=new ArrayList<applicationhome>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				applicationhome ac=new applicationhome();
				ac.setHomeid(result.getInt(1));
                ac.setLeibie(zh.toZH(result.getString(2)));
                ac.setHome(zh.toZH(result.getString(3)));
                ac.setWhere(zh.toZH(result.getString(4)));
                ac.setShi(result.getString(5));
                ac.setTing(result.getString(6));
                ac.setWei(result.getString(7));
                ac.setZhuangxiu(zh.toZH(result.getString(8)));
                ac.setUser(zh.toZH(result.getString(9)));
                ac.setPhone(result.getString(10));
                ac.setQq(result.getString(11));
				list.add(ac);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		public List<applicationhome> HTSelectApplication(int homeid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from HouseXQ where homeid="+homeid+"";
			List<applicationhome> list=new ArrayList<applicationhome>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				applicationhome ac=new applicationhome();
                ac.setHomeid(result.getInt(1));
                ac.setLeibie(zh.toZH(result.getString(2)));
                ac.setHome(zh.toZH(result.getString(3)));
                ac.setWhere(zh.toZH(result.getString(4)));
                ac.setShi(result.getString(5));
                ac.setTing(result.getString(6));
                ac.setWei(result.getString(7));
                ac.setZhuangxiu(zh.toZH(result.getString(8)));
                ac.setUser(zh.toZH(result.getString(9)));
                ac.setPhone(result.getString(10));
                ac.setQq(result.getString(11));
				list.add(ac);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		
		public boolean DeleteApplication(int did) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from HouseXQ where homeid="+did+"" ;
				System.out.println(st+"------------删除用户申请信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("-删除用户申请信息------删除成功");
					return true;
					} else {
						System.out.println("-删除用户申请信息------删除失败");
					return false;
					}
		}
		@Override
		public boolean HTaddNews(String title, String news, String photo, int personid, String context) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into News (title,news,photo,personid,context) "
						+ "values('"+zh.toUTF(title)+"','"+zh.toUTF(news)+"','"+zh.toUTF(photo)+"',"+personid+",'"+context+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加新闻------提交成功");
					return true;
					} else {
						System.out.println("添加新闻------提交失败");
					return false;
		}
		}
		@Override
		public List<News> HTSelectnewsList() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from News";
			List<News> list=new ArrayList<News>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				News n=new News();
             n.setNewsid(result.getInt(1));
              n.setTitle(zh.toZH(result.getString(2)));
            n.setNews(zh.toZH(result.getString(3)));
            n.setPhoto(zh.toZH(result.getString(4)));
            n.setPersonid(result.getInt(5));
            n.setContext(result.getString(6));
				list.add(n);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		
			
		
		public List<News> HTSelectnewsList(int newsid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from News where newsid="+newsid+"";
			List<News> list=new ArrayList<News>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				News n=new News();
             n.setNewsid(result.getInt(1));
              n.setTitle(zh.toZH(result.getString(2)));
            n.setNews(zh.toZH(result.getString(3)));
            n.setPhoto(zh.toZH(result.getString(4)));
            n.setPersonid(result.getInt(5));
				list.add(n);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		public boolean DeleteNEWS(int dnewsid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from News where newsid="+dnewsid+"" ;
				System.out.println(st+"------------删除新闻信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("-删除新闻信息------删除成功");
					return true;
					} else {
						System.out.println("-删除新闻信息------删除失败");
					return false;
					}
		}
		public int SelectHouseXQ() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			int count=0;
			String st="select count(*) NUM from HouseXQ";
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				count=result.getInt(1);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return count;
		}
		public int SelectContant() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			int count=0;
			String st="select count(*) NUM from Contant";
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				count=result.getInt(1);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return count;
		}
		public int SelectNews() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			int count=0;
			String st="select count(*) NUM from News";
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				count=result.getInt(1);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return count;
		}


		@Override
		public boolean HTAdminPhoto(String phopo, int personid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "UPDATE administrator SET photosrc = '"+zh.toUTF(phopo)+"'WHERE administratorid ="+personid+" ";
				System.out.println(st+"------------修改管理员信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("管理员信息------上传成功");
					return true;
					} else {
						System.out.println("管理员信息------上传失败");
					return false;
					}
		}

		public boolean HTsetCustomer( String customername, String customerjianjie, String customeryear,  String photosrc) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into Customer (customername,customerjianjie,customeryear,photosrc) "
						+ "values('"+zh.toUTF(customername)+"','"+zh.toUTF(customerjianjie)+"','"+zh.toUTF(customeryear)+"','"+zh.toUTF(photosrc)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加合作客户------提交成功");
					return true;
					} else {
						System.out.println("添加合作客户------提交失败");
					return false;
		}
		}
		
		public boolean DeleteCustomer(int id) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from Customer where customserid="+id+"" ;
				System.out.println(st+"------------删除合作客户--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("-删除合作客户------删除成功");
					return true;
					} else {
						System.out.println("-删除合作客户------删除失败");
					return false;
					}
		}
		public List<Customer> HTSelectCustomer() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from Customer";
			List<Customer> list=new ArrayList<Customer>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				Customer c=new Customer();
                c.setCustomserid(result.getInt(1));
                c.setCustomername(zh.toZH(result.getString(2)));
                c.setCustomerjianjie(zh.toZH(result.getString(3)));
                c.setCustomeryear(zh.toZH(result.getString(4)));
                c.setPhotosrc(zh.toZH(result.getString(5)));
				list.add(c);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		public boolean DeleteGoodSale(int administratorid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from GoodSale where  administratorid="+administratorid+"" ;
				System.out.println(st+"------------删除优秀销售信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("优秀销售信息------删除成功");
					return true;
					} else {
						System.out.println("优秀销售信息------删除失败");
					return false;
					}
		}
		public List<Person> SelectGoodSale() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			List<Person> list=new ArrayList<Person>();
			String st="select * from GoodSale";
			System.out.println(st);
			try {
			sql=con.prepareStatement(st);
			
			result=sql.executeQuery();
			while(result.next()){
			Person p=new Person();
			p.setAdministratorid(result.getString(1));
			p.setUsername(zh.toZH(result.getString(2)));
			p.setPwd(zh.toZH(result.getString(3)));
			p.setPhone(zh.toZH(result.getString(4)));
			p.setQQ(zh.toZH(result.getString(5)));
			p.setWechat(zh.toZH(result.getString(6)));
			p.setEmail(zh.toZH(result.getString(7)));
			p.setIntroduction(zh.toZH(result.getString(8)));
			p.setPhotosrc(zh.toZH(result.getString(9)));
			list.add(p);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		
		/*
		 * 
		 * 已出租
		 * 
		 * */
		public boolean HTAlterLeaedHome(String leibie, String homename, String where, String shi, String ting, String wei,
				String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
				String homeleixing, String photo, int administratorid, int price, int louceng, int homeid,String xiaoqu,String zhoubian,String jiaotong) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "UPDATE LeaedHome SET leibie = '"+zh.toUTF(leibie)+"', homename = '"+zh.toUTF(homename)+"', homewhere = '"+zh.toUTF(where)+"',"
						+ " shi = '"+zh.toUTF(shi)+"',ting = '"+zh.toUTF(ting)+"', wei = '"+zh.toUTF(wei)+"',  chu = '"+zh.toUTF(chu)+"',che = '"+zh.toUTF(che)+"', yang = '"+zh.toUTF(yang)+"', niandai = '"+zh.toUTF(niandai)+"',"
						+ " mianji = '"+zh.toUTF(mianji)+"',zhuangxiu = '"+zh.toUTF(zhuangxiu)+"', chaoxiang = '"+zh.toUTF(chaoxiang)+"', zhoubian = '"+zh.toUTF(zhoubian)+"', xiaoqu = '"+zh.toUTF(xiaoqu)+"', jiaotong = '"+zh.toUTF(jiaotong)+"',  chu = '"+zh.toUTF(homeleixing)+"', photo = '"+zh.toUTF(photo)+"', price = '"+price+"', louceng = '"+louceng+"'"
						+ "WHERE homeid ="+homeid+" ";
				System.out.println(st+"------------修改已出租房源信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("修改已出租房源信息------修改成功");
					return true;
					} else {
						System.out.println("修改已出租房源信息------修改失败");
					return false;
					}
		}
		
		public List<HomeDeiltus> SelectLeaedHome() {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from LeaedHome";
			System.out.println(st+"后台登录房屋列表");
			List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				HomeDeiltus hd=new HomeDeiltus();
				hd.setHomeid(result.getInt(1));
			    hd.setLeibie(zh.toZH(result.getString(2)));
			    hd.setHomename(zh.toZH(result.getString(3)));
			    hd.setWhere(zh.toZH(result.getString(4)));
			    hd.setShi(zh.toZH(result.getString(5)));
			    hd.setTing(zh.toZH(result.getString(6)));
			    hd.setWei(zh.toZH(result.getString(7)));
			    hd.setChu(zh.toZH(result.getString(8)));
			    hd.setChe(zh.toZH(result.getString(9)));
			    hd.setYang(zh.toZH(result.getString(10)));
			    hd.setNiandai(zh.toZH(result.getString(11)));
			    hd.setMianji(zh.toZH(result.getString(12)));
			    hd.setZhuangxiu(zh.toZH(result.getString(13)));
			    hd.setChaoxiang(zh.toZH(result.getString(14)));
			    hd.setHomeleixing(zh.toZH(result.getString(15)));
			    hd.setPhoto(zh.toZH(result.getString(16)));
			    hd.setAdministratorid(result.getInt(17));
			    hd.setAdminname(selectname(result.getInt(17)));
			    hd.setPrice(result.getInt(18));
			    hd.setLouceng(result.getInt(19));
			    hd.setXiaoqu(zh.toZH(result.getString(20)));
			    hd.setZhoubian(zh.toZH(result.getString(21)));
			    hd.setJiaotong(zh.toZH(result.getString(22)));
			    list.add(hd);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		@Override
		public boolean DeleteLeaedHome(int homeid) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "delete from LeaedHome where homeid="+homeid+"" ;
				System.out.println(st+"------------删除房屋信息--------------");
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("房屋信息------删除成功");
					return true;
					} else {
						System.out.println("房屋信息------删除失败");
					return false;
					}
		}
		@Override
		public List<HomeDeiltus> SelectLeaedHomeDeiltus(int id) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql=null;
			ResultSet result=null;
			String st="select * from LeaedHome where homeid="+id+"";
			System.out.println(st+"后台登录房屋列表详情");
			List<HomeDeiltus> list=new ArrayList<HomeDeiltus>();
			try {
			sql=con.prepareStatement(st);
			result=sql.executeQuery();
			while(result.next()){
				HomeDeiltus hd=new HomeDeiltus();
			    hd.setHomeid(result.getInt(1));
			    hd.setLeibie(zh.toZH(result.getString(2)));
			    hd.setHomename(zh.toZH(result.getString(3)));
			    hd.setWhere(zh.toZH(result.getString(4)));
			    hd.setShi(zh.toZH(result.getString(5)));
			    hd.setTing(zh.toZH(result.getString(6)));
			    hd.setWei(zh.toZH(result.getString(7)));
			    hd.setChu(zh.toZH(result.getString(8)));
			    hd.setChe(zh.toZH(result.getString(9)));
			    hd.setYang(zh.toZH(result.getString(10)));
			    hd.setNiandai(zh.toZH(result.getString(11)));
			    hd.setMianji(zh.toZH(result.getString(12)));
			    hd.setZhuangxiu(zh.toZH(result.getString(13)));
			    hd.setChaoxiang(zh.toZH(result.getString(14)));
			    hd.setHomeleixing(zh.toZH(result.getString(15)));
			    hd.setPhoto(zh.toZH(result.getString(16)));
			    hd.setAdministratorid(result.getInt(17));
			    hd.setPrice(result.getInt(18));
			    hd.setLouceng(result.getInt(19));
			    hd.setXiaoqu(zh.toZH(result.getString(20)));
			    hd.setZhoubian(zh.toZH(result.getString(21)));
			    hd.setJiaotong(zh.toZH(result.getString(22)));
			    list.add(hd);
			}
			con.close();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return list;
		}
		public boolean HTAddLeaedHome(String leibie, String homename, String where, String shi, String ting, String wei,
				String chu, String che, String yang, String niandai, String mianji, String zhuangxiu, String chaoxiang,
				String homeleixing, String photo, int administratorid,int price,int louceng,String xiaoqu,String zhoubian,String jiaotong) {
			Connection con=SqlDb.getConnection();
			PreparedStatement sql;
			num=0;
				try {
				String st = "insert into LeaedHome (leibie,homename,homewhere,shi,ting,wei,chu,che,yang,niandai,mianji,zhuangxiu,chaoxiang,homeleixing,photo,administratorid,price,louceng,xiaoqu,zhoubian,jiaotong) "
						+ "values('"+zh.toUTF(leibie)+"','"+zh.toUTF(homename)+"','"+zh.toUTF(where)+"','"+zh.toUTF(shi)+"'"
								+ ",'"+zh.toUTF(ting)+"','"+zh.toUTF(wei)+"','"+zh.toUTF(chu)+"'"
										+ ",'"+zh.toUTF(che)+"','"+zh.toUTF(yang)+"','"+zh.toUTF(niandai)+"'"
												+ ",'"+zh.toUTF(mianji)+"','"+zh.toUTF(zhuangxiu)+"','"+zh.toUTF(chaoxiang)+"'"
														+ ",'"+zh.toUTF(homeleixing)+"','"+zh.toUTF(photo)+"','"+administratorid+"',"+price+","+louceng+",'"+zh.toUTF(xiaoqu)+"','"+zh.toUTF(zhoubian)+"','"+zh.toUTF(jiaotong)+"')";
				System.out.println(st);
				sql = con.prepareStatement(st);
				num = sql.executeUpdate();
		        con.close(); 
				} catch (SQLException e) {
				e.printStackTrace();
				}
				if (num != 0) {
					System.out.println("添加房屋------提交成功");
					return true;
					} else {
						System.out.println("添加房屋------提交失败");
					return false;

		}
		}
		
	}
	
	

		
    

