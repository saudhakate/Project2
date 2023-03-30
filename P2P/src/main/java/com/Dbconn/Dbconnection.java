package com.Dbconn;

import java.sql.*;

public class Dbconnection {

		public static Connection GetConnection() {
			Connection con = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/academy", "root", "Saurabh@12");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return con;
		}
}
