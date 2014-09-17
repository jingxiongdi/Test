package com.exam.database;

import java.sql.*;

public class ConnectionManager {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/myexam";
	private static final String DBNAME = "root";
	private static final String DBPASS = "admin";

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, DBNAME, DBPASS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void closeConnection(Connection con) {
		try {
			if (con == null) {
				con.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();

		}

	}

	public static void closeResultSet(ResultSet rs) {
		try {
			if (rs == null) {
				rs.close();

			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}
	}

	public static void closeStatement(PreparedStatement pst) {
		try {
			if (pst == null) {
				pst.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}
	}

}
