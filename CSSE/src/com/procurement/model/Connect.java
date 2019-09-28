package com.procurement.model;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
public class Connect {

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/csse", "root", "123");

		} catch (Exception e) {
			System.err.println(e);
		}
		return conn;
	}

}
