package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		public static List<Admin> validate(String userName,String password) {
			
			ArrayList<Admin> ad = new ArrayList<>();
			
			
		
			try {
				
				con= DBcconnect.getConnection();
				stmt = con.createStatement();
				String sql ="select * from admin where username='"+userName+"' and password='"+password+"'";
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String userU = rs.getString(5);
					String passU = rs.getString(6);
					
					Admin a = new Admin(id,name,email,phone,userU,passU);
					ad.add(a);
					
				}		
			}
			catch(Exception e ) {
				e.printStackTrace();
			}

			return ad;
			
				}
	public static boolean insertadmin(String name, String email, String phone, String username, String password) { 
		
		boolean isSuccess = false;
	
	
			try {
				con= DBcconnect.getConnection();
				stmt = con.createStatement();
			
				String sql = "insert into admin values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";				
			    int rs = stmt.executeUpdate(sql);
			    
			    if(rs > 0) {
			    	isSuccess = true;
			    	
			    }else {
			    	isSuccess = false;
			    }
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
				
				
		
		
		
		return isSuccess;
	}
	
	public static boolean updateadmin(String id, String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			 con= DBcconnect.getConnection();
			 stmt =con.createStatement();
			 String sql = "update admin set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
	    				+ "where id='"+id+"'";
			 int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
			 
		 }
	catch(Exception e) {
		e.printStackTrace();
	}
	
		
		
		
		 return isSuccess;
	}
	
	public static List<Admin> getAdminDetails(String Id){
		int convertedID = Integer.parseInt(Id);
		ArrayList<Admin> ad = new ArrayList<>();
		
		try {
			con = DBcconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String username = rs.getString(5);
    			String password = rs.getString(6);
			
    			Admin a = new Admin(id,name,email,phone,username,password);
    			ad.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}		
		return ad;
	}
	   
    public static boolean deleteAdmin(String id) {
    	
    	
    	int convId = Integer.parseInt(id);
    	
    	
    	try {
    		
    		con = DBcconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from admin where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
}
    
	
	
	
   		
        

    		
    	
