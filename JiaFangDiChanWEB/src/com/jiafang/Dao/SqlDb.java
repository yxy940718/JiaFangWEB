package com.jiafang.Dao;
//======mysql=================//
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SqlDb {
   
	static  String driverName="com.mysql.jdbc.Driver";
    static  String dbURL= "jdbc:mysql://localhost:3306/JiaFangWEB";
    static  String user= "root"; 
    static  String password= "root"; 
    public static Connection getConnection(){
        
        Connection conn = null;
        
        try {
            Class.forName(driverName);
            
            conn = DriverManager.getConnection(dbURL,user,password);
            
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println(e.getMessage());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return conn;
    }
    
    public void close(Connection connection,Statement st,ResultSet rs){
        
        try {
            if(connection!= null){
                connection.close();
            }
            if(st!= null){
                st.close();
            }
            if(rs!= null){
                rs.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
    }
}