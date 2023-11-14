package com.momo.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnectionMain {
public static void main(String[] args) {
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id="TESTUSER";
	String pw="1234";
	Connection con=null;
	Statement stmt = null;
	ResultSet rs = null;
			
	
	try {
		//드라이버 확인
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//커넥션 객체 생성, DB연결
		con = DriverManager.getConnection(url, id, pw);
		String sql = "insert into job values(?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "99");
		pstmt.setString(2, "값99");

		int res = pstmt.executeUpdate();
		while(rs.next()) {
			System.out.print( rs.getString(1)+ " ");
			System.out.println( rs.getString(2));
			
		}
	} catch (ClassNotFoundException e) {
		System.out.println("드라이버가 로딩실패, 라이브러리를 찾을 수 없습니다.");
		e.printStackTrace();
	} catch (SQLException e) {
		System.out.println("Connection 객체 생성실패");
		e.printStackTrace();
	} finally {
		try {
			
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		
	}
	
		
	}
}

