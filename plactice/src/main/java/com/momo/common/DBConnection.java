package com.momo.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class DBConnection {
	public Connection con;
	public Statement stmt;
	public PreparedStatement pstmt;
	public ResultSet rs;
	
	/**
	 * DB연결 
	 */
	public DBConnection() {		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String id = "TESTUSER";
			String pw = "1234";
			
			con=DriverManager.getConnection(url, id, pw);
			System.out.println("DB연결 성공");
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("connection 객체 생성 실패");
			e.printStackTrace();
		}
	}
	
	public DBConnection(String url, String id, String pw, String driver ) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,id,pw);
			System.out.println("DB연결 성공(인수 생성자)");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("connection 객체 생성 실패");
			e.printStackTrace();
		}
		
	}
	
	public DBConnection(ServletContext application) {
		String driver = application.getInitParameter("driver");
		String url = application.getInitParameter("url");
		String id = application.getInitParameter("id");
		String pw = application.getInitParameter("pw");
		
		try {
			Class.forName(driver);
			con =DriverManager.getConnection(url, id, pw);
			System.out.println("application객체이용 DB연결 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패-라이브러리 찾을 수 없음");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("connection객체 생성 실패");
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 자원반납 메서드
	 */
	public void close() {
		try {
		if( rs != null) { rs.close(); }
		if( pstmt != null) { pstmt.close();}
		if( stmt != null ) { stmt.close(); } 
		} catch (SQLException e) {
			System.out.println("자원반납 중 예외발생");
			e.printStackTrace();
		} }
		
	}
	
	
	

