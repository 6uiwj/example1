package com.momo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import com.momo.common.DBConnection;
import com.momo.dto.EmpDto;

public class EmpDao extends DBConnection{
	
	public EmpDao(ServletContext application) {
		super(application);
	}
	
	public List<EmpDto> getList() {
		List<EmpDto> list = new ArrayList<>();
		try {
			stmt = con.createStatement();
			String sql = "select * from employee";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
			EmpDto dto = new EmpDto();
			dto.setEmp_id(rs.getString(1));
			dto.setEmp_name(rs.getString(2));
			dto.setEmp_no(rs.getString(3));
			dto.setDept_code(rs.getString(6));
			dto.setSalary(Integer.parseInt(rs.getString(8)));

			list.add(dto);

			}
		} catch (SQLException e) {
			System.out.println("객체 생성 실패");
			e.printStackTrace();
		} 
		return list;
	}
	public static void main(String[] args) {
	
	}

}
