package com.Blood.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Blood.bean.BloodBean;
import com.Blood.util.DBUtil;

public class BloodDAO {
	Connection con=DBUtil.getDBConnection();
	public String insertData(BloodBean bloodBean)
	{
		String Firstname=bloodBean.getFirstname();
		String Lastname=bloodBean.getLastname();
		String Username=Firstname+Lastname;
		String Email=bloodBean.getEmail();
		String Location=bloodBean.getLocation();
		String Password=bloodBean.getPassword();
		System.out.println(Email);
		System.out.println(Location);
		try {
			System.out.println("2");
			String query="insert into Account values(?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1,Username);
			stmt.setString(2,Email);
			stmt.setString(3,Password);
			stmt.setString(4,Location);
			stmt.execute();
			
		}
		catch(SQLException e)
		{
			System.out.println("3");
			System.out.println(e);
			
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
				return "no account";
			}
		}
		catch(SQLException e)
		{
			System.out.println("9");
			System.out.println(e);
			
		}
		return null;
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

}
