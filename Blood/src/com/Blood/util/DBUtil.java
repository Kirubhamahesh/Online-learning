package com.Blood.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	static Connection con=null;
	public static Connection getDBConnection()
	
	{
		if (con == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prdatabase","root",""); 
				System.out.println("Connection Created");
			}
			catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return con;
	}
		

}
