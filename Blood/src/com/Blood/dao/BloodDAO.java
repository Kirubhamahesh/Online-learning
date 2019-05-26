package com.Blood.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Blood.bean.BloodBean;
import com.Blood.bean.DonarBean;
import com.Blood.util.DBUtil;

public class BloodDAO {
	Connection con=DBUtil.getDBConnection();
	public String insertData(BloodBean bloodBean)
	{
		String Firstname=bloodBean.getFirstname();
		String Lastname=bloodBean.getLastname();
		String Username=Firstname;
		String Email=bloodBean.getEmail();
		String Location=bloodBean.getLocation();
		String Password=bloodBean.getPassword();
		String message=bloodBean.getMessage();
		System.out.println(Email);
		System.out.println(Location);
		try {
			System.out.println("2");
			String query="insert into Account values(?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1,Username);
			stmt.setString(2,Email);
			stmt.setString(3,Password);
			stmt.setString(4,Location);
			stmt.setString(5,message);
			stmt.execute();
			
		}
		catch(SQLException e)
		{
			System.out.println("3");
			System.out.println(e);
			return "Error";
			
		}
		return "True";
		
	}
	public String insertDonarData(DonarBean donarBean)
	{
		
		String Username=donarBean.getUsername();
		String contact=donarBean.getContact();
		String Location=donarBean.getLocation();
		String age=donarBean.getAge();
		String type=donarBean.getType();
		String address=donarBean.getAddress();
		
		
		try {
			System.out.println("donarinfo");
			String query="insert into donarinfo values(?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1,Username);
			stmt.setString(2,contact);
			stmt.setString(3,Location);
			stmt.setString(4,age);
			stmt.setString(5,type);
			stmt.setString(6,address);
			stmt.execute();
			
		}
		catch(SQLException e)
		{
			System.out.println("3");
			System.out.println(e);
			return "Error";
			
		}
		return "True";
		
	}
	
	
	
	public String checkData(String username, String password) {
		try
		{
			System.out.println("4");
			String query1="select * from Account where username=?";
			PreparedStatement st = con.prepareStatement(query1);
			st.setString(1, username);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				System.out.println("5");
				String query2="select * from Account where username=? and password=?";
				PreparedStatement st1 = con.prepareStatement(query2);
				st1.setString(1, username);
				st1.setString(2, password);
				ResultSet rs1=st1.executeQuery();
				if(rs1.next())
				{
					System.out.println("6");
					return "True";
				}
				else {
					System.out.println("7");
					return "Invalid Password";
				}
			}
			else {
				System.out.println("8");
				return "No Account";
			}
		}
		catch(SQLException e)
		{
			System.out.println("9");
			System.out.println(e);
			return "Error";
			
		}
		
	}
	public boolean checkEmail(String email) {
		try {
			System.out.println("10");
			String query2="select * from Account where email=?";
			PreparedStatement st2 = con.prepareStatement(query2);
			st2.setString(1, email);
			ResultSet rs2=st2.executeQuery();
			if(rs2.next())
			{
				return true;
			}
		}
		catch(SQLException e)
		{
			System.out.println("11");
			System.out.println(e);
			
			
		}
		return false;
	}
	
	public String GetLocation(String username) {
		try {
			System.out.println("11");
			String query5="select * from Account where username=?";
			PreparedStatement st5 = con.prepareStatement(query5);
			st5.setString(1, username);
			ResultSet rs5=st5.executeQuery();
			if(rs5.next())
			{
				return rs5.getString(4);
			}
		}
		catch(SQLException e)
		{
			System.out.println("11");
			System.out.println(e);
			return "Error";
			
		}
		return username;
		
	}
	public String updateData(String email) {
		try {
			System.out.println("11");
			String query6="select password from  Account where email=?";
			PreparedStatement st6 = con.prepareStatement(query6);
			
			st6.setString(1, email);
			ResultSet r=st6.executeQuery();
			if (r.next())
			{
				return r.getString(1);
			}
			
				return  "Email Id Not Found";
			
		}
		catch(SQLException e)
		{
			System.out.println("11");
			System.out.println(e);
			return "Error";
			
		}
		
		
		
	}
	
	public String updatePassword(String username, BloodBean bloodBean) {
		try {
			System.out.println("11");
			String query6="update Account set  password=? where username=?";
			PreparedStatement st6 = con.prepareStatement(query6);
			String password=bloodBean.getPassword();
			st6.setString(1, password);
			st6.setString(2, username);
			st6.executeUpdate();
			return "True";
		}
		catch(SQLException e)
		{
			System.out.println("11");
			System.out.println(e);
			return "Error";
			
		}
		
		
		
	}
	public String updatemessage(String message,String username) {
		try {
			System.out.println("11");
			String query6="update Account set  message=? where username=?";
			PreparedStatement st6 = con.prepareStatement(query6);
			
			st6.setString(1, message);
			st6.setString(2, username);
			st6.executeUpdate();
			return "True";
		}
		catch(SQLException e)
		{
			System.out.println("11");
			System.out.println(e);
			return "Error";
			
		}
		
		
		
	}
	

}
