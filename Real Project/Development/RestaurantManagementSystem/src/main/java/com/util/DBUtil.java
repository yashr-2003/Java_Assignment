package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBUtil 
{
		Connection cn=null;
		public Connection getConnectionData()
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root","");
	
			} catch (Exception e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			return cn;
		}
}
