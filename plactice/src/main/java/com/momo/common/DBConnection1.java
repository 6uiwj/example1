package com.momo.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection1 {
	Connection con = null;
	Statement stmt = null;
	public DBConnection1() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl");
			stmt = con.createStatement();
			String sql = "select * from member";
			stmt.executeQuery(sql);
			stmt.
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 로딩할 수 없습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("커넥션 객체를 생성할 수 없습니다.");
			e.printStackTrace();
			
		}
	}
	
}
